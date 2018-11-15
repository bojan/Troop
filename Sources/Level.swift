//
//  Level
//  Troop
//
//  Created by Bojan Dimovski on 13.12.17.
//  Copyright © 2017 Bojan Dimovski. All rights reserved.
//


import Foundation

extension Troop {

	public enum Level: Int, CaseIterable {

		case verbose = 0
		case debug
		case info
		case warning
		case error

	}

}

extension Troop.Level: Comparable {

	public static func <(lhs: Troop.Level, rhs: Troop.Level) -> Bool {
		return lhs.rawValue < rhs.rawValue
	}

}

extension Troop.Level: CustomStringConvertible {

	public var description: String {
		switch self {
		case .verbose:
			return "VERBOSE"
		case .debug:
			return "DEBUG"
		case .info:
			return "INFO"
		case .warning:
			return "WARNING"
		case .error:
			return "ERROR"
		}
	}

}

protocol MappableLevel {

	init?(level: Troop.Level)

}
