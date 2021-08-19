//
//  AirportView.swift
//  AirportMingle
//
//  Created by Jippe Joosten on 18/08/2021.
//

import SwiftUI

struct AirportView: View {
    let connectionHelper = ConnectionHelper()
    var airport: Airport
    var airports: [Airport]

    var body: some View {
        List {
            Section(header: Text("Details")) {
                TitleDetailCell(title: "Id", detail: airport.id)
                TitleDetailCell(title: "Latitude", detail: "\(airport.latitude)")
                TitleDetailCell(title: "Longitude", detail: "\(airport.longitude)")
                TitleDetailCell(title: "Name", detail: airport.name)
                TitleDetailCell(title: "City", detail: airport.city)
                TitleDetailCell(title: "Country id", detail: airport.countryId)
            }

            if let nearestAirport = connectionHelper.closestAirport(from: airport, airports: airports) {
                Section(header: Text("Nearest airport")) {
                    TitleDetailCell(title: "Name", detail: nearestAirport.name)
                    TitleDetailCell(title: "Distance", detail: connectionHelper.format(distance: connectionHelper.getDistanceBetween(first: airport, second: nearestAirport)))
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
