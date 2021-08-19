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

    @State var airports: [Airport]
    @State var region: MKCoordinateRegion

    var body: some View {
        NavigationView {
            Map(coordinateRegion: $region, annotationItems: airports) { airport in
                MapAnnotation(coordinate: mapHelper.getCoordinates(from: airport)) {
                    AirportAnnotation(airport: airport)
                }
            }
            .navigationBarTitle(L10n.Map.navigationTitle, displayMode: .inline)
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(
            airports: [],
            region: MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275),
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        )
    }
}
