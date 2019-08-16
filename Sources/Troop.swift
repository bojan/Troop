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
//  Troop
//  Troop
//
//  Created by Bojan Dimovski on 13.12.17.
//

import Foundation

public struct Troop {

	// MARK: - Properties

	// The configuration and the destinations CAN be set only during initialization
	private(set) var configuration: Configuration
	private(set) var destinations = [LoggingDestination]()

	// MARK: - Lifecycle

	// A convenience initializer for a single destination
	public init(configuration: Configuration, destination: LoggingDestination) {
		self.init(configuration: configuration, destinations: [destination])
	}

	// Initialize the logger with valid destinations and a configuration
	public init(configuration: Configuration, destinations: [LoggingDestination]) {
		assert(destinations.count > 0, "No purpose of initializing the logger without any destinations!")

		self.configuration = configuration

		self.destinations = destinations.map { destination -> LoggingDestination in
			let destination = destination
			destination.owner = self
			return destination
		}
	}

	// MARK: - Log level shorthand functions

	public func verbose(_ message: String, file: String = #file, function: String = #function, line: Int = #line) {
		send(message: message, level: .verbose, file: file, function: function, line: line)
	}

	public func debug(_ message: String, file: String = #file, function: String = #function, line: Int = #line) {
		send(message: message, level: .debug, file: file, function: function, line: line)
	}

	public func info(_ message: String, file: String = #file, function: String = #function, line: Int = #line) {
		send(message: message, level: .info, file: file, function: function, line: line)
	}

	public func warning(_ message: String, file: String = #file, function: String = #function, line: Int = #line) {
		send(message: message, level: .warning, file: file, function: function, line: line)
	}

	public func error(_ message: String, file: String = #file, function: String = #function, line: Int = #line) {
		send(message: message, level: .error, file: file, function: function, line: line)
	}

	// MARK: - Processing and sending of messages

	private func send(message rawMessage: String, level: Level, thread: Thread? = nil, file: String, function: String, line: Int) {
		// Check whether the message level is acceptable by the configuration
		guard level >= configuration.level
		else {
			return
		}

		// Create a message object
		let message = Message(contents: rawMessage, level: level, thread: thread, file: file, function: function, line: line)

		// Send it to each of the registered destinations
		destinations.forEach { destination in
			destination.process(message: message)
		}
	}

}

