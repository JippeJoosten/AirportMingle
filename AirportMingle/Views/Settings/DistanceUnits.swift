//
//  DistanceUnits.swift
//  AirportMingle
//
//  Created by Jippe Joosten on 20/08/2021.
//

import Foundation
import MapKit

enum DistanceUnits: Int, CaseIterable {
    static let appStorageKey = "DistanceUnitsUsed"

    case automatic
    case kilometers
    case miles

    var name: String {
        switch self {
        case .automatic:
            return L10n.Settings.DistanceUnits.automatic
        case .kilometers:
            return L10n.Settings.DistanceUnits.kilometers
        case .miles:
            return L10n.Settings.DistanceUnits.miles
        }
    }

    var unit: MKDistanceFormatter.Units {
        switch self {
        case .automatic:
            return .default
        case .kilometers:
            return .metric
        case .miles:
            return .imperial
        }
    }
}
