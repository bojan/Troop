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
//  Bundle
//  Troop
//
//  Created by Bojan Dimovski on 29.12.17.
//

import Foundation

extension Bundle {
	var displayName: String? {
		return object(forInfoDictionaryKey: "CFBundleDisplayName") as? String
	}

	var versionNumber: String? {
		return object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String
	}

	var buildNumber: String? {
		return object(forInfoDictionaryKey: "CFBundleVersion") as? String
	}
}
