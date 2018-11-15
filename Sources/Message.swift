//
//  Message.swift
//  Troop
//
//  Created by Bojan Dimovski on 13.12.17.
//  Copyright © 2017 Bojan Dimovski. All rights reserved.
//


import Foundation

public struct Message {
	public var contents: String
	public var level: Level
	public var thread: Thread?
	public var file: String
	public var function: String
	public var line: Int
}
