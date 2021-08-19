//
//  ConnectionHelper.swift
//  AirportMingle
//
//  Created by Jippe Joosten on 19/08/2021.
//

import Foundation
import CoreLocation
import MapKit

class ConnectionHelper {
    let formatter = MKDistanceFormatter()

    func getAirports(from flights: [Flight], airports: [Airport]) -> [Airport] {
        let arrivalAirportsIds = Set( flights.map { $0.arrivalAirportId } )
        return arrivalAirportsIds.compactMap { getArrivalAirport(from: $0, airports: airports) }
    }

    func distanceSorted(airports: [Airport], from airport: Airport) -> [Airport] {
        return airports.sorted { getDistanceBetween(first: airport, second: $0) < getDistanceBetween(first: airport, second: $1) }
    }

    func closestAirport(from airport: Airport, airports: [Airport]) -> Airport? {
        let otherAirports = airports.filter { $0.id != airport.id }
        let distances = otherAirports.map { (airport: $0, distance: getDistanceBetween(first: airport, second: $0)) }
        let closest = distances.min { $0.distance < $1.distance }
        return closest?.airport
    }

    func getDistanceBetween(first: Airport, second: Airport) -> CLLocationDistance {
        let firstCoordinates = CLLocation(latitude: first.latitude, longitude: first.longitude)
        let secondCoordinates = CLLocation(latitude: second.latitude, longitude: second.longitude)
        return secondCoordinates.distance(from: firstCoordinates)
    }

    func format(distance: CLLocationDistance) -> String {
        formatter.units = .default
        return formatter.string(fromDistance: distance)
    }

    func getDepartureAirport(from flight: Flight, airports: [Airport]) -> Airport? {
        airports.first(where: { $0.id == flight.departureAirportId })
    }

    func getArrivalAirport(from flightId: String, airports: [Airport]) -> Airport? {
        airports.first(where: { $0.id == flightId })
    }
}
