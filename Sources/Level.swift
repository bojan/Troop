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
//  Level
//  Troop
//
//  Created by Bojan Dimovski on 13.12.17.
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
