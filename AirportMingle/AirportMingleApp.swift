//
//  AirportMingleApp.swift
//  AirportMingle
//
//  Created by Jippe Joosten on 18/08/2021.
//

import SwiftUI

@main
struct AirportMingleApp: App {
    @StateObject private var mapViewModel = MainViewModel()

    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(mapViewModel)
        }
    }
}
