//
//  Constants
//  Troop
//
//  Created by Bojan Dimovski on 29.12.17.
//  Copyright © 2017 Bojan Dimovski. All rights reserved.
//


import Foundation

struct Constants {

	static let mainThreadFallback = "Main"
	static let defaultConfiguration = Configuration(prefix: "com.bojandimovski.troop.", level: .debug, showTimestamp: true, showThread: false, showLocation: true, dateFormatter: DateFormatter(), dateFormat: "YYYY-mm-dd HH:mm:ss.SSS")

	struct Queue {
		static let prefix = "\(Constants.defaultConfiguration.prefix)queue-"
	}

}
