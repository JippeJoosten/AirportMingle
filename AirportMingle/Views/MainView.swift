//
//  MainView.swift
//  AirportMingle
//
//  Created by Jippe Joosten on 18/08/2021.
//

import SwiftUI
import Lottie

struct MainView: View {
    private var mapHelper = MapHelper()

    @EnvironmentObject private var mainViewModel: MainViewModel

    var body: some View {
        if mainViewModel.isLoading {
            Image(systemName: "airplane")
                .foregroundColor(.blue)
                .font(.system(size: 64, weight: .regular))
        } else if let error = mainViewModel.error {
            VStack(spacing: 16.0) {
                Image(systemName: "icloud.slash.fill")
                    .foregroundColor(.blue)
                    .font(.system(size: 64, weight: .regular))
                Text(error.localizedDescription)
                Button(action: { mainViewModel.reload() }, label: {
                    Text("Retry")
                })
            }
            .padding(.horizontal, 32.0)

        } else {
            TabView {
                MapView(airports: mainViewModel.airports, region: mapHelper.getDefaultRegion(from: mainViewModel.mainAirport))
                    .tabItem {
                        Label(L10n.Tabbar.mapTitle, systemImage: "map")
                    }
                ConnectionsView()
                    .tabItem {
                        Label(L10n.Tabbar.connectionsTitle, systemImage: "airplane")
                    }
                SettingsView()
                    .tabItem {
                        Label(L10n.Tabbar.settingsTitle, systemImage: "gear")
                    }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
