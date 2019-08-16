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
//  MockLevel
//  Troop
//
//  Created by Bojan Dimovski on 14.2.18.
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
