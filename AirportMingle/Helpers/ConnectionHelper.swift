//
//  ConnectionHelper.swift
//  AirportMingle
//
//  Created by Jippe Joosten on 19/08/2021.
//

import Foundation
import SwiftUI
import CoreLocation
import MapKit

class ConnectionHelper {
    // Got this formatter from the Apple docs https://developer.apple.com/documentation/mapkit/mkdistanceformatter
    let formatter = MKDistanceFormatter()

    func getConnections(from flights: [Flight], airports: [Airport]) -> [Airport] {
        let arrivalAirportsIds = Set( flights.map { $0.arrivalAirportId } )
        return arrivalAirportsIds.compactMap { getArrivalAirport(from: $0, airports: airports) }
    }

    func getDistanceSorted(airports: [Airport], from airport: Airport) -> [Airport] {
        return airports.sorted { getDistanceBetween(first: airport, second: $0) < getDistanceBetween(first: airport, second: $1) }
    }

    func getClosestAirport(from airport: Airport, airports: [Airport]) -> Airport? {
        let otherAirports = airports.filter { $0.id != airport.id }
        let distances = otherAirports.map { (airport: $0, distance: getDistanceBetween(first: airport, second: $0)) }
        let closest = distances.min { $0.distance < $1.distance }
        return closest?.airport
    }

    func getAirportsWithMostDistance(from airports: [Airport]) -> (Airport, Airport)? {
        var airportDistanceArray: [(from: Airport, to: Airport, distance: CLLocationDistance)] = []
        for arrivalAirport in airports {
            for destinationAirports in airports {
                airportDistanceArray.append((arrivalAirport, destinationAirports, getDistanceBetween(first: arrivalAirport, second: destinationAirports)))
            }
        }
        if let furtest = airportDistanceArray.max(by: { $0.distance < $1.distance }) {
            return (furtest.from, furtest.to)
        }
        return nil
    }

    func getDistanceBetween(first: Airport, second: Airport) -> CLLocationDistance {
        let firstCoordinates = CLLocation(latitude: first.latitude, longitude: first.longitude)
        let secondCoordinates = CLLocation(latitude: second.latitude, longitude: second.longitude)
        return secondCoordinates.distance(from: firstCoordinates)
    }

    func format(distance: CLLocationDistance, unit: MKDistanceFormatter.Units) -> String {
        formatter.units = unit
        return formatter.string(fromDistance: distance)
    }

    func getDepartureAirport(from flight: Flight, airports: [Airport]) -> Airport? {
        airports.first(where: { $0.id == flight.departureAirportId })
    }

    func getArrivalAirport(from flightId: String, airports: [Airport]) -> Airport? {
        airports.first(where: { $0.id == flightId })
    }
}
