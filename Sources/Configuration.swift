//
//  Configuration
//  Troop
//
//  Created by Bojan Dimovski on 13.2.18.
//  Copyright © 2018 Bojan Dimovski. All rights reserved.
//


import Foundation

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
