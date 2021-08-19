//
//  ConnectionsView.swift
//  AirportMingle
//
//  Created by Jippe Joosten on 18/08/2021.
//

import SwiftUI

struct ConnectionsView: View {
    var body: some View {
        NavigationView {
            List {
                Text("Amsterdam")
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
