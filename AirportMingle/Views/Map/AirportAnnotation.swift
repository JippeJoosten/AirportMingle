//
//  AirportAnnotation.swift
//  AirportMingle
//
//  Created by Jippe Joosten on 19/08/2021.
//

import SwiftUI
import MapKit

struct AirportAnnotation: View {
    var airport: Airport
    var airports: [Airport]
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(UIColor.systemBackground))
                .shadow(radius: 2, x: 2, y: 2)
            NavigationLink(
                destination:
                    AirportView(airport: airport, airports: airports)
                    .navigationTitle(L10n.Airport.navigationTitle),
                label: {
                    VStack {
                        Image(systemName: "airplane.circle.fill")
                            .font(.system(size: 24, weight: .regular))
                        Text(airport.id)
                            .font(.caption)
                            .fontWeight(.bold)
                    }
                    .foregroundColor(.blue)
                    .padding(4.0)
                }
            )
        }
    }
}

struct AirportAnnotation_Previews: PreviewProvider {
    static var previews: some View {
        AirportAnnotation(airport: Airport(id: "AMS", latitude: 52.30907, longitude: 4.763385, name: "Amsterdam-Schiphol Airport", city: "Amsterdam", countryId: "NL"), airports: [])
    }
}
