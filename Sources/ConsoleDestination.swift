//
//  ConsoleDestination
//  Troop
//
//  Created by Bojan Dimovski on 13.12.17.
//  Copyright © 2017 Bojan Dimovski. All rights reserved.
//


import Foundation

public class ConsoleDestination: LoggingDestination {

	public override func send(message: Message) {
		guard let owner = owner
		else {
			return
		}

		print(format(message: message, configuration: owner.configuration))
	}

	private func format(message: Message, configuration: Configuration) -> String {
		var components = [String]()

		if configuration.showTimestamp {
			components.append("[\(formattedDate)]")
		}

		components.append("[\(prefix(for: message.level))\(description(for: message.level))]")

		if configuration.showLocation {
			let file = message.file.filenameWithoutPath ?? message.file
			components.append("[\(file):\(message.line); \(message.function)]")
		}

		if let threadName = message.thread?.name,
		   !threadName.isEmpty,
		   configuration.showThread {
			components.append("[\(threadName)]")
		}

		components.append(message.contents)

		return components.joined(separator: " ")
	}

	private func prefix(for level: Level) -> String {
		let prefix: String

		switch level {
		case .verbose:
			prefix = "🔹"
		case .debug:
			prefix = "🔨"
		case .info:
			prefix = "ℹ️"
		case .warning:
			prefix = "⚠️️"
		case .error:
			prefix = "⛔️"
		}

		return prefix
	}

}
