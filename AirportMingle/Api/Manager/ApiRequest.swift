//
//  ApiRequest.swift
//  AirportMingle
//
//  Created by Jippe Joosten on 18/08/2021.
//

import Foundation

/// All requests must conform to this protocol
public protocol ApiRequest: Encodable {
    /// Response (will be wrapped with a DataContainer)
    associatedtype Response: Codable

    /// The endpoint of the request
    var endpoint: String { get }
}
