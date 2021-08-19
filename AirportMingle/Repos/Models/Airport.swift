//
//  Airport.swift
//  AirportMingle
//
//  Created by Jippe Joosten on 18/08/2021.
//

import Foundation
import SwiftUI

struct Airport: Codable, Identifiable {
    let id: String

    let latitude: Double
    let longitude: Double

    let name: String
    let city: String
    let countryId: String
}
