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
//  StringTests.swift
//  Tests
//
//  Created by Bojan Dimovski on 15.2.18.
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
