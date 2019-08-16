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
//  Configuration
//  Troop
//
//  Created by Bojan Dimovski on 13.2.18.
//

import Foundation

extension Troop {

	public struct Configuration {
		public var prefix: String
		public var level: Level

		public var showTimestamp = true
		public var showThread = false
		public var showLocation = true

		public var dateFormatter: DateFormatter
		public var dateFormat: String

		public init(prefix: String, level: Level, showTimestamp: Bool = true, showThread: Bool = false, showLocation: Bool = true, dateFormatter: DateFormatter? = nil, dateFormat: String? = nil) {
			self.prefix = prefix
			self.level = level
			self.showTimestamp = showTimestamp
			self.showThread = showThread
			self.showLocation = showLocation
			self.dateFormatter = dateFormatter ?? DateFormatter()
			self.dateFormat = dateFormat ?? "YYYY-mm-dd HH:mm:ss.SSS"
		}
	}

}
