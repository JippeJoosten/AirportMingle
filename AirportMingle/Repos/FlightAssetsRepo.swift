//
//  FlightAssetsRepo.swift
//  AirportMingle
//
//  Created by Jippe Joosten on 18/08/2021.
//

import Foundation

class FlightAssetsRepo {

    private let api = APIManager()

    func getAirports() -> ResponsePublisher<[Airport]> {
        api.get(baseUrl: .flightAssets, request: GetAirports())
    }

    func getFlights() -> ResponsePublisher<[Flight]> {
        api.get(baseUrl: .flightAssets, request: GetFlights())
    }
}
