//
//  MapViewModel.swift
//  AirportMingle
//
//  Created by Jippe Joosten on 18/08/2021.
//

import Foundation
import Combine

class MainViewModel: ObservableObject {
    private var cancellables = Set<AnyCancellable>()
    private let connectionHelper = ConnectionHelper()
    private let repo = FlightAssetsRepo()
    private let mainAirportId = "AMS"

    @Published var isLoading: Bool = true
    @Published var error: Error?

    @Published var mainAirport: Airport
    @Published var furtestAirports: (Airport, Airport)?
    @Published var airports: [Airport] = []
    @Published var flights: [Flight] = []

    init() {
        mainAirport = Airport(
            id: "AMS",
            latitude: 52.30907,
            longitude: 4.763385,
            name: "Amsterdam-Schiphol Airport",
            city: "Amsterdam",
            countryId: "NL"
        )

        reload()
    }

    func reload() {
        isLoading = true

        Publishers.Zip(repo.getAirports(), repo.getFlights())
            .receive(on: DispatchQueue.main)

            .sink { [weak self] value in
                guard let self = self else { return }
                if case let .failure(error) = value {
                    self.error = error
                }
                self.isLoading = false
            } receiveValue: { [weak self] airports, flights in
                guard let self = self else { return }

                self.setMainVariables(airports: airports, flights: flights)

                self.isLoading = false
            }
            .store(in: &cancellables)
    }

    private func setMainVariables(airports: [Airport], flights: [Flight]) {
        self.airports = airports
        self.flights = flights

        mainAirport = airports.first(where: { $0.id == mainAirportId }) ?? mainAirport
        furtestAirports = connectionHelper.getAirportsWithMostDistance(airports: airports)
    }
}
