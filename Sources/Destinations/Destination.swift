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
//  Destination
//  Troop
//
//  Created by Bojan Dimovski on 12.12.17.
//

import Foundation
import Dispatch

protocol Destination {
	var isAsynchronous: Bool { get set }
	var queue: DispatchQueue { get set }
	var formattedDate: String { get }
	var owner: Troop? { get set }

	func process(message: Troop.Message)
	func send(message: Troop.Message)
	func description(for level: Troop.Level) -> String
}

extension Destination {

	func process(message: Troop.Message) {
		guard owner != nil
		else {
			return
		}

		let executeBlock: () -> Void = {
			self.send(message: message)
		}

		if isAsynchronous {
			queue.async {
				executeBlock()
			}
		}
		else {
			queue.sync {
				executeBlock()
			}
		}
	}

	func description(for level: Troop.Level) -> String {
		return level.description
	}

	var formattedDate: String {
		let configuration = owner?.configuration ?? Constants.defaultConfiguration

		let dateFormatter = configuration.dateFormatter
		dateFormatter.dateFormat = configuration.dateFormat

		return dateFormatter.string(from: Date())
	}

}
