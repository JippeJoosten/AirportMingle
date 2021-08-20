//
//  SettingsView.swift
//  AirportMingle
//
//  Created by Jippe Joosten on 18/08/2021.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage(DistanceUnits.appStorageKey) var currentDistanceUnit: DistanceUnits = .automatic

    var body: some View {
        NavigationView {
            List {
                Section(header: Text(L10n.Settings.distanceUnits)) {
                    ForEach(DistanceUnits.allCases, id: \.hashValue) { unit in
                        Button(action: { currentDistanceUnit = unit }, label: {
                            HStack {
                                Text(unit.name)
                                Spacer()
                                if unit == currentDistanceUnit {
                                    Image(systemName: "checkmark")
                                }
                            }
                        })
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
