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
//  MockDestination.swift
//  Tests
//
//  Created by Bojan Dimovski on 14.12.17.
//

import Foundation
@testable import Troop

class MockDestination: LoggingDestination {
	override init() {
		super.init()

		self.isAsynchronous = true
	}

	func description(for level: Troop.Level) -> String {
		switch level {
		case .debug:
			return "Д"
		case .error:
			return "Е"
		case .info:
			return "И"
		case .verbose:
			return "В"
		case .warning:
			return "Њ"
		}
	}

	func execute(message: Troop.Message) {
		print("Message: \(message.contents)")
	}

}
