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
//  UnifiedLogDestination
//  Troop
//
//  Created by Bojan Dimovski on 09.2.18.
//

import Foundation
import os.log

extension Constants {
	struct UnifiedLog {
		static let subsystem = Constants.defaultConfiguration.prefix
	}
}

public class UnifiedLogDestination: LoggingDestination {

	private var log: OSLog

	override convenience init() {
		self.init(subsystem: nil, category: nil)
	}

	public init(subsystem: String?, category: String?) {
		log = OSLog(subsystem: subsystem ?? Constants.UnifiedLog.subsystem, category: category ?? "")
	}

	public override func send(message: Troop.Message) {
		os_log("%@", log: log, type: OSLogType(level: message.level), message.contents)
	}
}

extension OSLogType: MappableLevel {

	public init(level: Troop.Level) {
		switch level {
		case .verbose:
			self = .info
		case .debug:
			self = .debug
		case .warning, .error:
			self = .error
		case .info:
			self = .default
		}
	}

}
