//
//  ApiManager.swift
//  AirportMingle
//
//  Created by Jippe Joosten on 18/08/2021.
//

import Foundation
import Combine

public typealias ResponsePublisher<Value: Codable> = (AnyPublisher<Value, Error>)

/// The API manager that can handle a rest client
class APIManager {

    let config: URLSessionConfiguration = {
        let config = URLSessionConfiguration.default
        config.timeoutIntervalForRequest = 60
        return config
    }()

    /// Sends a request to the servers, calling the result method when finished
    func get<T: ApiRequest>(baseUrl: ApiTypes, request: T) -> ResponsePublisher<T.Response> {
        let url = baseUrl.endpoint(with: request.endpoint)!
        let session = URLSession(configuration: config)

        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"

        return session.dataTaskPublisher(for: urlRequest)
            .tryMap { response in
                if let httpURLResponse = response.response as? HTTPURLResponse,
                   !(200...299 ~= httpURLResponse.statusCode) {
                    print("http code: \(httpURLResponse.statusCode)")
                    let error = NSError(domain: L10n.Error.somethingWentWrong, code: 0, userInfo: nil)
                    throw error
                }
                return response.data
            }
            .decode(type: T.Response.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}
