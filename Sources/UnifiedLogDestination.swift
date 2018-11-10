//
//  UnifiedLogDestination
//  Troop
//
//  Created by Bojan Dimovski on 09.2.18.
//  Copyright © 2018 Bojan Dimovski. All rights reserved.
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

	public override func send(message: Message) {
		os_log("%@", log: log, type: OSLogType(level: message.level), message.contents)
	}
}

extension OSLogType: MappableLevel {

	public init(level: Level) {
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
