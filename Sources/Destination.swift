//
//  Destination
//  Troop
//
//  Created by Bojan Dimovski on 12.12.17.
//  Copyright © 2017 Bojan Dimovski. All rights reserved.
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
