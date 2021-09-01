//
//  MapHelperTests.swift
//  AirportMingleTests
//
//  Created by Jippe Joosten on 30/08/2021.
//

import XCTest
import MapKit

class MapHelperTests: XCTestCase {
    let mapHelper = MapHelper()

    let fakeAirport = Airport(id: "NULL", latitude: 0, longitude: 0, name: "Fake airport", city: "Fakeville", countryId: "FV")

    func testGetRegion() throws {
        let region = mapHelper.getRegion(for: fakeAirport)
        let expectedResult = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 0, longitude: 0),
            span: MKCoordinateSpan(latitudeDelta: mapHelper.defaultDelta, longitudeDelta: mapHelper.defaultDelta)
        )

        XCTAssertEqual(region.center.latitude, expectedResult.center.latitude)
        XCTAssertEqual(region.center.longitude, expectedResult.center.longitude)
        XCTAssertEqual(region.span.latitudeDelta, expectedResult.span.latitudeDelta)
        XCTAssertEqual(region.span.longitudeDelta, expectedResult.span.longitudeDelta)
    }

    func testGetCoordinates() throws {
        let coordinates = mapHelper.getCoordinates(from: fakeAirport)
        let expectedResult = CLLocationCoordinate2D(latitude: 0, longitude: 0)

        XCTAssertEqual(coordinates.latitude, expectedResult.latitude)
        XCTAssertEqual(coordinates.longitude, expectedResult.longitude)
    }
}
