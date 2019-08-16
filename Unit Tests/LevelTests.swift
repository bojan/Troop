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
//  LevelTests.swift
//  Tests
//
//  Created by Bojan Dimovski on 14.2.18.
//

import XCTest
@testable import Troop

class LevelTests: XCTestCase {

	func testValidRawLevels() {
		check(.verbose, for: 0)
		check(.debug, for: 1)
		check(.info, for: 2)
		check(.warning, for: 3)
		check(.error, for: 4)
	}

	private func check(_ level: Troop.Level, for rawValue: Int) {
		let checkedLevel = Troop.Level(rawValue: rawValue)

		XCTAssertNotNil(checkedLevel)
		if let checkedLevel = checkedLevel {
			XCTAssertEqual(level, checkedLevel)
		}
	}

	func testAllLevelValues() {
		let allCases = Troop.Level.allCases

		XCTAssertEqual(allCases.count, 5)
	}

	func testLevelComparison() {
		XCTAssertTrue(Troop.Level.debug > Troop.Level.verbose)
		XCTAssertFalse(Troop.Level.info > Troop.Level.warning)
		XCTAssertTrue(Troop.Level.info >= Troop.Level.debug)
		XCTAssertTrue(Troop.Level.verbose <= Troop.Level.warning)
		XCTAssertFalse(Troop.Level.warning <= Troop.Level.debug )
	}

	func testLevelMapping() {
		check(.default, for: .verbose)
		check(.default, for: .debug)
		check(.default, for: .info)
		check(.warning, for: .warning)
		check(.fault, for: .error)
	}

	private func check(_ level: MockLevel, for mappedLevel: Troop.Level) {
		let checkedLevel = MockLevel(level: mappedLevel)

		XCTAssertNotNil(checkedLevel)
		if let checkedLevel = checkedLevel {
			XCTAssertEqual(level, checkedLevel)
		}
	}
}
