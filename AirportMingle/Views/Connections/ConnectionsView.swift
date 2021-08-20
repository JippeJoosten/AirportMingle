//
//  ConnectionsView.swift
//  AirportMingle
//
//  Created by Jippe Joosten on 18/08/2021.
//

import SwiftUI

struct ConnectionsView: View {
    private var connectionHelper = ConnectionHelper()

    @EnvironmentObject private var mainViewModel: MainViewModel
    @AppStorage(DistanceUnits.appStorageKey) var currentDistanceUnit: DistanceUnits = .automatic

    var body: some View {
        NavigationView {
            List(
                connectionHelper.distanceSorted(
                    airports: connectionHelper.getAirports(
                        from: mainViewModel.flights,
                        airports: mainViewModel.airports
                    ),
                    from: mainViewModel.mainAirport
                )
            ) { airport in
                NavigationLink(
                    destination: AirportView(airport: airport, airports: mainViewModel.airports)
                        .navigationTitle(L10n.Airport.navigationTitle),
                    label: {
                        HStack {
                            Text(airport.name)
                            Spacer()
                            Text(connectionHelper.format(distance: connectionHelper.getDistanceBetween(first: mainViewModel.mainAirport, second: airport), unit: currentDistanceUnit.unit))
                                .foregroundColor(Color.gray)
                        }
                    }
                )
            }
            .navigationTitle(L10n.Connections.navigationTitle)
        }
    }
}

struct ReachView_Previews: PreviewProvider {
    static var previews: some View {
        ConnectionsView()
    }
}
