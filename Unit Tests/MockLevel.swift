//
//  MockLevel
//  Troop
//
//  Created by Bojan Dimovski on 14.2.18.
//  Copyright © 2018 Bojan Dimovski. All rights reserved.
//


import Foundation
@testable import Troop

enum MockLevel: Int, MappableLevel {
	case `default` = 0
	case fault
	case warning

	init?(level: Troop.Level) {
		switch level {
		case .verbose, .debug, .info:
			self = .default
		case .warning:
			self = .warning
		case .error:
			self = .fault
		}
	}
}
