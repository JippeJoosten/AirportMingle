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
        if mainViewModel.isLoading {
            LoadingView()
        } else if let error = mainViewModel.error {
            ErrorView(error: error)
        } else {
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
                .toolbar(content: {
                    Button(action: mainViewModel.reload, label: {
                        Image(systemName: "gobackward")
                    })
                })
            }
        }
    }
}

struct ReachView_Previews: PreviewProvider {
    static var previews: some View {
        ConnectionsView()
    }
}
