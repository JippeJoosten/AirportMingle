//
//  SettingsView.swift
//  AirportMingle
//
//  Created by Jippe Joosten on 18/08/2021.
//

import SwiftUI

struct SettingsView: View {
    // Got to know more about the property mapper here https://www.hackingwithswift.com/quick-start/swiftui/what-is-the-appstorage-property-wrapper
    @AppStorage(DistanceUnits.appStorageKey) var currentDistanceUnit: DistanceUnits = .automatic

    var body: some View {
        NavigationView {
            List {
                Section(header: Text(L10n.Settings.distanceUnits)) {
                    ForEach(DistanceUnits.allCases, id: \.hashValue) { unit in
                        RadioButtonCell(
                            action: { currentDistanceUnit = unit },
                            title: unit.name,
                            checked: unit == currentDistanceUnit
                        )
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle(L10n.Settings.navigationTitle)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
