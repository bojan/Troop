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
//  ConsoleDestination
//  Troop
//
//  Created by Bojan Dimovski on 13.12.17.
//

import Foundation

public class ConsoleDestination: LoggingDestination {

	public override func send(message: Troop.Message) {
		guard let owner = owner
		else {
			return
		}

		print(format(message: message, configuration: owner.configuration))
	}

	private func format(message: Troop.Message, configuration: Troop.Configuration) -> String {
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

	private func prefix(for level: Troop.Level) -> String {
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
