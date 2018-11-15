//
//  MockDestination.swift
//  Tests
//
//  Created by Bojan Dimovski on 14.12.17.
//  Copyright © 2017 Bojan Dimovski. All rights reserved.
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
