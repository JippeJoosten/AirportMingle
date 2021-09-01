//
//  ConnectionHelperTests.swift
//  AirportMingleTests
//
//  Created by Jippe Joosten on 30/08/2021.
//

import XCTest
import MapKit

class ConnectionHelperTests: XCTestCase {
    let connectionHelper = ConnectionHelper()

    let airports = [
        Airport(
            id: "AMS",
            latitude: 52.30907, longitude: 4.763385,
            name: "Amsterdam-Schiphol Airport",
            city: "Amsterdam", countryId: "NL"
        ),
        Airport(
            id: "RTM",
            latitude: 51.948948, longitude: 4.433606,
            name: "Rotterdam The Hague Airport",
            city: "Rotterdam", countryId: "NL"
        ),
        Airport(
            id: "FCO",
            latitude: 41.794594, longitude: 12.250346,
            name: "Fiumicino Airport",
            city: "Rome", countryId: "IT"
        )
    ]

    let flights = [
        Flight(
            airlineId: "HV", flightNumber: 553,
            departureAirportId: "AMS", arrivalAirportId: "RTM"
        ),
        Flight(
            airlineId: "KL", flightNumber: 1597,
            departureAirportId: "AMS", arrivalAirportId: "FCO"
        ),
        Flight(
            airlineId: "KL", flightNumber: 1601,
            departureAirportId: "AMS", arrivalAirportId: "FCO"
        )
    ]

    func testGetConnections() throws {
        let airports = connectionHelper.getConnections(from: flights, airports: airports)

        let expectedAirports = [
            Airport(
                id: "RTM",
                latitude: 51.948948, longitude: 4.433606,
                name: "Rotterdam The Hague Airport",
                city: "Rotterdam", countryId: "NL"
            ),
            Airport(
                id: "FCO",
                latitude: 41.794594, longitude: 12.250346,
                name: "Fiumicino Airport",
                city: "Rome", countryId: "IT"
            )
        ]

        XCTAssertTrue(airports.count == (self.airports.count - 1))
        XCTAssertEqual(
            airports.sorted(by: { $0.id < $1.id }),
            expectedAirports.sorted(by: { $0.id < $1.id })
        )
    }

    func testGetDistanceSorted() throws {
        var airports = airports
        let firstAirport = airports.removeFirst()
        let sortedAirports = connectionHelper.getDistanceSorted(airports: airports, from: firstAirport)

        let expectedAirports = [
            Airport(
                id: "RTM",
                latitude: 51.948948, longitude: 4.433606,
                name: "Rotterdam The Hague Airport",
                city: "Rotterdam", countryId: "NL"
            ),
            Airport(
                id: "FCO",
                latitude: 41.794594, longitude: 12.250346,
                name: "Fiumicino Airport",
                city: "Rome", countryId: "IT"
            )
        ]

        XCTAssertEqual(sortedAirports, expectedAirports)
    }

    func testGetClosestAirport() throws {
        var airports = MockAirports
        airports.removeAll(where: { $0.id == MainAirport.id })

        self.measure {
            let closestAirport = connectionHelper.getClosestAirport(from: MainAirport, airports: airports)
            XCTAssertEqual(closestAirport, ClosestAirportToMain)
        }

        let secondAirport = Airport(
            id: "NAP",
            latitude: 40.886112, longitude: 14.291667,
            name: "Naples Airport",
            city: "Naples", countryId: "IT"
        )

        let secondClostestAirport = Airport(
            id: "FCO",
            latitude: 41.794594, longitude: 12.250346,
            name: "Fiumicino Airport",
            city: "Rome", countryId: "IT"
        )

        airports = MockAirports
        airports.removeAll(where: { $0.id == secondAirport.id })

        let closestAirport = connectionHelper.getClosestAirport(from: secondAirport, airports: airports)
        XCTAssertEqual(closestAirport, secondClostestAirport)
    }

    func testGetAirportsWithMostDistance() throws {

        let furtestApartAirports = [
            Airport(id: "AGP", latitude: 36.675182, longitude: -4.489616, name: "Malaga Airport", city: "Malaga", countryId: "ES"),
            Airport(id: "AKL", latitude: -37.004787, longitude: 174.78352, name: "Auckland International Airport", city: "Auckland", countryId: "NZ")
        ]

        self.measure {
            guard let result = connectionHelper.getAirportsWithMostDistance(airports: MockAirports) else {
                XCTFail("No result found for the airports with most distance!")
                return
            }
            XCTAssertTrue(furtestApartAirports.contains(result.0) && furtestApartAirports.contains(result.1))
        }
    }

    func testGetDistanceBetween() throws {
        let pointA = Airport(
            id: "AMS",
            latitude: 52.30907, longitude: 4.763385,
            name: "Amsterdam-Schiphol Airport",
            city: "Amsterdam", countryId: "NL"
        )

        let pointB = Airport(
            id: "RTM",
            latitude: 51.948948, longitude: 4.433606,
            name: "Rotterdam The Hague Airport",
            city: "Rotterdam", countryId: "NL"
        )

        let distance = connectionHelper.getDistanceBetween(first: pointA, second: pointB)
        XCTAssertEqual(distance, 45996.42859645004)

        let pointC = Airport(
            id: "",
            latitude: 0, longitude: 0,
            name: "",
            city: "", countryId: ""
        )

        let pointD = Airport(
            id: "",
            latitude: 1, longitude: 1,
            name: "",
            city: "", countryId: ""
        )

        let distance2 = connectionHelper.getDistanceBetween(first: pointC, second: pointD)
        XCTAssertEqual(distance2, 156900.54441288)
    }

    func testDistanceFormater() throws {
        let distanceKMString = connectionHelper.format(distance: CLLocationDistance(2000), unit: .metric)
        let expectedKMResult = "2.0 km"
        XCTAssertEqual(distanceKMString, expectedKMResult)

        let distanceMString = connectionHelper.format(distance: CLLocationDistance(500), unit: .metric)
        let expectedMResult = "500 m"
        XCTAssertEqual(distanceMString, expectedMResult)
    }

    func testGetDepartureAirport() throws {
        let expectedAirport = Airport(
            id: "AMS",
            latitude: 52.30907, longitude: 4.763385,
            name: "Amsterdam-Schiphol Airport",
            city: "Amsterdam", countryId: "NL"
        )

        let flight = Flight(
            airlineId: "HV", flightNumber: 553,
            departureAirportId: "AMS", arrivalAirportId: "RTM"
        )

        let airport = connectionHelper.getDepartureAirport(from: flight, airports: [expectedAirport])
        XCTAssertEqual(airport, expectedAirport)
    }

    func testGetArrivalAirport() throws {
        let expectedAirport = Airport(
            id: "RTM",
            latitude: 51.948948, longitude: 4.433606,
            name: "Rotterdam The Hague Airport",
            city: "Rotterdam", countryId: "NL"
        )

        let flight = Flight(
            airlineId: "HV", flightNumber: 553,
            departureAirportId: "AMS", arrivalAirportId: "RTM"
        )

        let airport = connectionHelper.getArrivalAirport(from: flight.arrivalAirportId, airports: [expectedAirport])
        XCTAssertEqual(airport, expectedAirport)
    }
}
