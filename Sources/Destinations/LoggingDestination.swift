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
//  LoggingDestination
//  Troop
//
//  Created by Bojan Dimovski on 29.12.17.
//

import Foundation

public class LoggingDestination: Destination {

	public var owner: Troop?
	public var isAsynchronous = false
	public var queue = DispatchQueue(label: "\(Constants.Queue.prefix)\(NSUUID().uuidString)")

	public init() {
	}

	public func send(message: Troop.Message) {
		fatalError("Incomplete implementation of the \(String(describing: Destination.self)) protocol!")
	}
}
