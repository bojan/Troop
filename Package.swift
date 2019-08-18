// swift-tools-version:5.0
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
//  Package
//  Troop
//
//  Created by Bojan Dimovski on 29.12.17.
//

import PackageDescription

let package = Package(
    name: "Troop",
    platforms: [
        .macOS(.v10_12),
        .iOS(.v10),
        .tvOS(.v10),
        .watchOS(.v3)
    ],
    products: [
        .library(
            name: "Troop",
            targets: ["Troop"])
    ],
    targets: [
        .target(
            name: "Troop",
            path: "Sources")
    ],
    swiftLanguageVersions: [.v5]
)
