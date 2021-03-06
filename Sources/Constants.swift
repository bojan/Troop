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
//  Constants
//  Troop
//
//  Created by Bojan Dimovski on 29.12.17.
//

import Foundation

struct Constants {

	static let mainThreadFallback = "Main"
	static let defaultConfiguration = Troop.Configuration(prefix: "com.bojandimovski.troop.", level: .debug, showTimestamp: true, showThread: false, showLocation: true, dateFormatter: DateFormatter(), dateFormat: "YYYY-mm-dd HH:mm:ss.SSS")

	struct Queue {
		static let prefix = "\(Constants.defaultConfiguration.prefix)queue-"
	}

}
