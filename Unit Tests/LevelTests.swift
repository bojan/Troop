//
//  LevelTests.swift
//  Tests
//
//  Created by Bojan Dimovski on 14.2.18.
//  Copyright © 2018 Bojan Dimovski. All rights reserved.
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

	private func check(_ level: Level, for rawValue: Int) {
		let checkedLevel = Level(rawValue: rawValue)

		XCTAssertNotNil(checkedLevel)
		if let checkedLevel = checkedLevel {
			XCTAssertEqual(level, checkedLevel)
		}
	}

	func testAllLevelValues() {
		let allValues = Level.allValues

		XCTAssertEqual(allValues.count, 5)
	}

	func testLevelComparison() {
		XCTAssertTrue(Level.debug > Level.verbose)
		XCTAssertFalse(Level.info > Level.warning)
		XCTAssertTrue(Level.info >= Level.debug)
		XCTAssertTrue(Level.verbose <= Level.warning)
		XCTAssertFalse(Level.warning <= Level.debug )
	}

	func testLevelMapping() {
		check(.default, for: .verbose)
		check(.default, for: .debug)
		check(.default, for: .info)
		check(.warning, for: .warning)
		check(.fault, for: .error)
	}

	private func check(_ level: MockLevel, for mappedLevel: Level) {
		let checkedLevel = MockLevel(level: mappedLevel)

		XCTAssertNotNil(checkedLevel)
		if let checkedLevel = checkedLevel {
			XCTAssertEqual(level, checkedLevel)
		}
	}
}
