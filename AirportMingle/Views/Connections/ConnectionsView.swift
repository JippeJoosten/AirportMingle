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
    @State var reverseList: Bool = false

    var body: some View {
        if mainViewModel.isLoading {
            LoadingView()
        } else if let error = mainViewModel.error {
            ErrorView(error: error)
        } else {
            NavigationView {
                List(getSortedAirports()) { airport in
                    NavigationLink(
                        destination: AirportView(airport: airport, airports: mainViewModel.airports)
                            .navigationTitle(L10n.Airport.navigationTitle),
                        label: {
                            TitleDetailCell(title: airport.name, detail: connectionHelper.format(distance: connectionHelper.getDistanceBetween(first: mainViewModel.mainAirport, second: airport), unit: currentDistanceUnit.unit))
                        }
                    )
                }
                .navigationTitle(L10n.Connections.navigationTitle)
                .toolbar(content: {
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        Button(action: { reverseList.toggle() }, label: {
                            Image(systemName: reverseList ? "decrease.quotelevel" : "increase.quotelevel")
                        })
                        Button(action: mainViewModel.reload, label: {
                            Image(systemName: "gobackward")
                        })
                    }
                })
            }
        }
    }

    func getSortedAirports() -> [Airport] {
        let sortedAirports = connectionHelper.getDistanceSorted(
            airports: connectionHelper.getConnections(
                from: mainViewModel.flights,
                airports: mainViewModel.airports
            ),
            from: mainViewModel.mainAirport
        )

        return reverseList ? sortedAirports.reversed() : sortedAirports
    }
}

struct ReachView_Previews: PreviewProvider {
    static var previews: some View {
        ConnectionsView()
    }
}
