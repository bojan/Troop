//
//  Bundle
//  Troop
//
//  Created by Bojan Dimovski on 29.12.17.
//  Copyright © 2017 Bojan Dimovski. All rights reserved.
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
