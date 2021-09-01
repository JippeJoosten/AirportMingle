//
//  GetFlights.swift
//  AirportMingle
//
//  Created by Jippe Joosten on 18/08/2021.
//

import Foundation

struct GetFlights: ApiRequest {
    public typealias Response = [Flight]

    public var endpoint: String {
        return "flights.json"
    }
}
