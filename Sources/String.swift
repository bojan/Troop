//
//  String
//  Troop
//
//  Created by Bojan Dimovski on 13.12.17.
//  Copyright © 2017 Bojan Dimovski. All rights reserved.
//

import Foundation

extension String {
	var filenameWithoutPath: String? {
		guard let filenameWithoutPath = NSURL(fileURLWithPath: self).lastPathComponent
		else {
			return nil
		}

		return filenameWithoutPath
	}
}
