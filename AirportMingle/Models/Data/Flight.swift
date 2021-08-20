//
//  Flight.swift
//  AirportMingle
//
//  Created by Jippe Joosten on 18/08/2021.
//

import Foundation
import SwiftUI

struct Flight: Codable, Identifiable {
    var id: String {
        return "\(airlineId)\(flightNumber)\(departureAirportId)\(arrivalAirportId)"
    }

    let airlineId: String
    let flightNumber: Int
    let departureAirportId: String
    let arrivalAirportId: String
}
