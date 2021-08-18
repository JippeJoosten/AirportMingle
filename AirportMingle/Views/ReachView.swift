//
//  ReachView.swift
//  AirportMingle
//
//  Created by Jippe Joosten on 18/08/2021.
//

import SwiftUI

struct ReachView: View {
    var body: some View {
        NavigationView {
            List {
                Text("Amsterdam")
            }
            .navigationTitle(L10n.Reach.navigationTitle)
        }
    }
}

struct ReachView_Previews: PreviewProvider {
    static var previews: some View {
        ReachView()
    }
}
