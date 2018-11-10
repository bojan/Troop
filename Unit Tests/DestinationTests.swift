//
//  DestinationTests.swift
//  Tests
//
//  Created by Bojan Dimovski on 13.12.17.
//  Copyright © 2017 Bojan Dimovski. All rights reserved.
//


import XCTest
@testable import Troop

class DestinationTests: XCTestCase {

	func testDestinationDescriptions() {
		let d = MockDestination()

		XCTAssert(d.description(for: .debug) == "Д")
		XCTAssert(d.description(for: .warning) == "Њ")
		XCTAssert(d.description(for: .info) == "И")
		XCTAssert(d.description(for: .error) == "Е")
		XCTAssert(d.description(for: .verbose) == "В")
	}

	func testDestinationProperties() {
		let d = MockDestination()

		XCTAssert(d.isAsynchronous == true)
		XCTAssertNotNil(d.queue)
	}

}
