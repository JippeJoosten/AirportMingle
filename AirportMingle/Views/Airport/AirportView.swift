//
//  AirportView.swift
//  AirportMingle
//
//  Created by Jippe Joosten on 18/08/2021.
//

import SwiftUI

struct AirportView: View {
    @AppStorage(DistanceUnits.appStorageKey) var currentDistanceUnit: DistanceUnits = .automatic

    let connectionHelper = ConnectionHelper()
    var airport: Airport
    var airports: [Airport]

    var body: some View {
        List {
            Section(header: Text(L10n.Airport.Location.title)) {
                TitleDetailCell(title: L10n.Airport.Location.name, detail: airport.name)
                TitleDetailCell(title: L10n.Airport.Location.city, detail: airport.city)
                TitleDetailCell(title: L10n.Airport.Location.countryId, detail: airport.countryId)
            }

            Section(header: Text(L10n.Airport.Details.title)) {
                TitleDetailCell(title: L10n.Airport.Details.id, detail: airport.id)
                TitleDetailCell(title: L10n.Airport.Details.latitude, detail: "\(airport.latitude)")
                TitleDetailCell(title: L10n.Airport.Details.longitude, detail: "\(airport.longitude)")
            }

            if let nearestAirport = connectionHelper.closestAirport(from: airport, airports: airports) {
                Section(header: Text(L10n.Airport.NearestAirport.title)) {
                    TitleDetailCell(title: L10n.Airport.NearestAirport.name, detail: nearestAirport.name)
                    TitleDetailCell(title: L10n.Airport.NearestAirport.distance, detail: connectionHelper.format(distance: connectionHelper.getDistanceBetween(first: airport, second: nearestAirport), unit: currentDistanceUnit.unit))
                }
            }
        }
        .listStyle(GroupedListStyle())
    }
}

struct AirportView_Previews: PreviewProvider {
    static var previews: some View {
        AirportView(airport: Airport(id: "AMS", latitude: 52.30907, longitude: 4.763385, name: "Amsterdam-Schiphol Airport", city: "Amsterdam", countryId: "NL"), airports: [])
    }
}
