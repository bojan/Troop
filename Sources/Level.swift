//
//  Level
//  Troop
//
//  Created by Bojan Dimovski on 13.12.17.
//  Copyright © 2017 Bojan Dimovski. All rights reserved.
//


import Foundation

public enum Level: Int {

	case verbose = 0
	case debug
	case info
	case warning
	case error

	public static let allValues: [Level] = [.verbose, .debug, .info, .warning, .error]

}

extension Level: Comparable {

	public static func <(lhs: Level, rhs: Level) -> Bool {
		return lhs.rawValue < rhs.rawValue
	}

}

extension Level: CustomStringConvertible {

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

	init?(level: Level)

}
