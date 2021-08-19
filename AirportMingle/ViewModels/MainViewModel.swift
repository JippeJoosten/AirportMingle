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
    private let repo = FlightAssetsRepo()
    private let mainAirportId = "AMS"

    @Published var isLoading: Bool = true
    @Published var error: Error?

    @Published var mainAirport: Airport?
    @Published var airports: [Airport] = []
    @Published var flights: [Flight] = []

    init() {
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

                self.mainAirport = airports.first(where: { $0.id == self.mainAirportId })

                self.airports = airports
                self.flights = flights

                self.isLoading = false
            }
            .store(in: &cancellables)
    }
}