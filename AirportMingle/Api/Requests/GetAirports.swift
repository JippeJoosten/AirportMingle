//
//  GetAirports.swift
//  AirportMingle
//
//  Created by Jippe Joosten on 18/08/2021.
//

import Foundation

struct GetAirports: ApiRequest {
    public typealias Response = [Airport]

    public var endpoint: String {
        return "airports.json"
    }
}
