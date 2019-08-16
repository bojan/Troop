//
//             DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
//                     Version 2, December 2004
//
//  Copyright (C) 2004 Sam Hocevar <sam@hocevar.net>
//
//  Everyone is permitted to copy and distribute verbatim or modified
//  copies of this license document, and changing it is allowed as long
//  as the name is changed.
//
//             DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
//    TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
//
//   0. You just DO WHAT THE FUCK YOU WANT TO.
//
//
//  ConfigurationTests.swift
//  Tests
//
//  Created by Bojan Dimovski on 15.2.18.
//

import XCTest
@testable import Troop

class ConfigurationTests: XCTestCase {
    
	func testValidConfiguration() {
		let configuration = Troop.Configuration(prefix: "com.starwars", level: .verbose, showTimestamp: false, showThread: false, showLocation: false, dateFormatter: MockDateFormatter(), dateFormat: "dd.mm.YYYY")

		XCTAssertEqual(configuration.prefix, "com.starwars")
		XCTAssertEqual(configuration.level, .verbose)
		XCTAssertFalse(configuration.showTimestamp)
		XCTAssertFalse(configuration.showThread)
		XCTAssertFalse(configuration.showLocation)
		XCTAssertTrue(configuration.dateFormatter is MockDateFormatter)
		XCTAssertEqual(configuration.dateFormat, "dd.mm.YYYY")

		let configuration2 = Troop.Configuration(prefix: "com.marvel", level: .debug)
		XCTAssertEqual(configuration2.prefix, "com.marvel")
		XCTAssertEqual(configuration2.level, .debug)
		XCTAssertTrue(configuration2.showTimestamp)
		XCTAssertFalse(configuration2.showThread)
		XCTAssertTrue(configuration2.showLocation)
		XCTAssertEqual(configuration2.dateFormat, "YYYY-mm-dd HH:mm:ss.SSS")
	}
}
