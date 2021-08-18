//
//  MainView.swift
//  AirportMingle
//
//  Created by Jippe Joosten on 18/08/2021.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            MapView()
                .tabItem {
                    Label(L10n.Tabbar.mapTitle, systemImage: "map")
                }
            ReachView()
                .tabItem {
                    Label(L10n.Tabbar.reachTitle, systemImage: "airplane")
                }
            SettingsView()
                .tabItem {
                    Label(L10n.Tabbar.settingsTitle, systemImage: "gear")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
