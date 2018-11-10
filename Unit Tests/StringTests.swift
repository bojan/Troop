//
//  StringTests.swift
//  Tests
//
//  Created by Bojan Dimovski on 15.2.18.
//  Copyright © 2018 Bojan Dimovski. All rights reserved.
//

import XCTest
@testable import Troop

class StringTests: XCTestCase {

	func testFilenameWithoutPath() {
		let relativePath = "../Info.plist".filenameWithoutPath
		XCTAssertNotNil(relativePath)
		if let path = relativePath {
			XCTAssertEqual(path, "Info.plist")
		}

		let absolutePath = "file:///tmp/log/Foo.bar".filenameWithoutPath
		XCTAssertNotNil(absolutePath)
		if let path = absolutePath {
			XCTAssertEqual(path, "Foo.bar")
		}

		let invalidPath = "".filenameWithoutPath
		XCTAssertNil(invalidPath)
	}

}
