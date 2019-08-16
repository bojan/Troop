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
//  Message.swift
//  Troop
//
//  Created by Bojan Dimovski on 13.12.17.
//

import Foundation

extension Troop {

	public struct Message {
		public var contents: String
		public var level: Troop.Level
		public var thread: Thread?
		public var file: String
		public var function: String
		public var line: Int
	}

}
