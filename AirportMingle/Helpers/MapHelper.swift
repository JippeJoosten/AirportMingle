//
//  MapHelper.swift
//  AirportMingle
//
//  Created by Jippe Joosten on 19/08/2021.
//

import Foundation
import MapKit

class MapHelper {
    let defaultSpanDelta: Double = 2
    
    func getRegion(for airport: Airport) -> MKCoordinateRegion {
        return .init(
            center: getCoordinates(from: airport),
            span: MKCoordinateSpan(latitudeDelta: defaultSpanDelta, longitudeDelta: defaultSpanDelta)
        )
    }

    func getCoordinates(from airport: Airport) -> CLLocationCoordinate2D {
        return .init(latitude: airport.latitude, longitude: airport.longitude)
    }
}
