//
//  MainView.swift
//  AirportMingle
//
//  Created by Jippe Joosten on 18/08/2021.
//

import SwiftUI

struct MainView: View {
    private var mapHelper = MapHelper()

    @EnvironmentObject private var mainViewModel: MainViewModel
    @State private var selectedTab = 0

    var body: some View {
        TabView(selection: $selectedTab) {
            MapView(region: mapHelper.getRegion(for: mainViewModel.mainAirport))
                .tabItem {
                    Label(L10n.Tabbar.mapTitle, systemImage: "map")
                }
                .tag(0)
            ConnectionsView()
                .tabItem {
                    Label(L10n.Tabbar.connectionsTitle, systemImage: "airplane")
                }
                .tag(1)
            SettingsView()
                .tabItem {
                    Label(L10n.Tabbar.settingsTitle, systemImage: "gear")
                }
                .tag(2)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
