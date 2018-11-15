//
//  LoggingDestination
//  Troop
//
//  Created by Bojan Dimovski on 29.12.17.
//  Copyright © 2017 Bojan Dimovski. All rights reserved.
//


import Foundation

public class LoggingDestination: Destination {

	public var owner: Troop?
	public var isAsynchronous = false
	public var queue = DispatchQueue(label: "\(Constants.Queue.prefix)\(NSUUID().uuidString)")

	public init() { }

	public func send(message: Troop.Message) {
		fatalError("Incomplete implementation of the \(String(describing: Destination.self)) protocol!")
	}
}
