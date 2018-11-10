//
//  ConfigurationTests.swift
//  Tests
//
//  Created by Bojan Dimovski on 15.2.18.
//  Copyright © 2018 Bojan Dimovski. All rights reserved.
//

import XCTest
@testable import Troop

class ConfigurationTests: XCTestCase {
    
	func testValidConfiguration() {
		let configuration = Configuration(prefix: "com.starwars", level: .verbose, showTimestamp: false, showThread: false, showLocation: false, dateFormatter: MockDateFormatter(), dateFormat: "dd.mm.YYYY")

		XCTAssertEqual(configuration.prefix, "com.starwars")
		XCTAssertEqual(configuration.level, .verbose)
		XCTAssertFalse(configuration.showTimestamp)
		XCTAssertFalse(configuration.showThread)
		XCTAssertFalse(configuration.showLocation)
		XCTAssertTrue(configuration.dateFormatter is MockDateFormatter)
		XCTAssertEqual(configuration.dateFormat, "dd.mm.YYYY")

		let configuration2 = Configuration(prefix: "com.marvel", level: .debug)
		XCTAssertEqual(configuration2.prefix, "com.marvel")
		XCTAssertEqual(configuration2.level, .debug)
		XCTAssertTrue(configuration2.showTimestamp)
		XCTAssertFalse(configuration2.showThread)
		XCTAssertTrue(configuration2.showLocation)
		XCTAssertEqual(configuration2.dateFormat, "YYYY-mm-dd HH:mm:ss.SSS")
	}
}
