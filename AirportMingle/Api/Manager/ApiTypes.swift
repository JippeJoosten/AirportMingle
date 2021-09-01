//
//  ApiTypes.swift
//  AirportMingle
//
//  Created by Jippe Joosten on 18/08/2021.
//

import Foundation

enum ApiTypes {
    case flightAssets

    func endpoint(with parameter: String) -> URL? {
        switch self {
        case .flightAssets:
            return URL(string: "https://flightassets.datasavannah.com/test/\(parameter)")
        }
    }

    var bearer: String? {
        switch self {
        default:
            return nil
        }
    }
}
