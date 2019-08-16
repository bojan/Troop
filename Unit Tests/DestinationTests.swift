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
//  DestinationTests.swift
//  Tests
//
//  Created by Bojan Dimovski on 13.12.17.
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
