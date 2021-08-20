//
//  MapView.swift
//  AirportMingle
//
//  Created by Jippe Joosten on 18/08/2021.
//

import SwiftUI
import MapKit

struct MapView: View {
    private let mapHelper = MapHelper()
    @EnvironmentObject private var mainViewModel: MainViewModel

    @State var region: MKCoordinateRegion

    var body: some View {
        if mainViewModel.isLoading {
            LoadingView()
        } else if let error = mainViewModel.error {
            ErrorView(error: error)
        } else {
            NavigationView {
                Map(coordinateRegion: $region, annotationItems: mainViewModel.airports) { airport in
                    MapAnnotation(coordinate: mapHelper.getCoordinates(from: airport)) {
                        AirportAnnotation(airport: airport, airports: mainViewModel.airports)
                    }
                }
                .navigationBarTitle(L10n.Map.navigationTitle, displayMode: .inline)
            }
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(
            region: MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275),
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        )
    }
}
