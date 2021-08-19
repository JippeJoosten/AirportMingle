//
//  MapHelper.swift
//  AirportMingle
//
//  Created by Jippe Joosten on 19/08/2021.
//

import Foundation
import MapKit

class MapHelper {
    func getDefaultRegion(from airport: Airport?) -> MKCoordinateRegion {
        if let airport = airport {
            return getDefaultRegion(from: airport)
        } else {
            return MKCoordinateRegion()
        }
    }

    func getDefaultRegion(from airport: Airport) -> MKCoordinateRegion {
        MKCoordinateRegion(
            center: getCoordinates(from: airport),
            span: MKCoordinateSpan(latitudeDelta: 2, longitudeDelta: 2)
        )
    }

    func getCoordinates(from airport: Airport) -> CLLocationCoordinate2D {
        return .init(latitude: airport.latitude, longitude: airport.longitude)
    }
}
