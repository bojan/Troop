# Troop
A modern device detection and querying library.

[![Build Status](https://app.bitrise.io/app/11d74c16cb253334/status.svg?token=0hHCAt_h3zx3j8DHmI-AWQ&branch=master)](https://app.bitrise.io/app/11d74c16cb253334)
[![GitHub license](https://img.shields.io/badge/license-WTFPL-brightgreen?style=flat-square)](https://raw.githubusercontent.com/bojan/Troop/master/LICENSE)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat-square)](https://github.com/Carthage/Carthage)
[![SPM](https://img.shields.io/badge/SPM-compatible-brightgreen.svg?style=flat-square)](https://github.com/apple/swift-package-manager)
[![codecov](https://codecov.io/gh/bojan/Troop/branch/master/graph/badge.svg)](https://codecov.io/gh/bojan/Troop)

## Features

- [x] Swift 5 support
- [x] Modern syntax
- [x] OSLog support

## Requirements

## Installation

### Swift Packager Manager (SPM)

Create a `Package.swift` file, and add this snippet:

```swift
import PackageDescription

let package = Package(
    name: "HelloWorld",
    dependencies: [
        .Package(url: "https://github.com/bojan/Troop.git")
    ]
)
```

### Carthage

Add this to your `Cartfile`:

```
github "bojan/Troop"
```

### Manually

Add the repository as a submodule to your project.

```
git submodule add https://github.com/bojan/Troop.git Vendor/Troop
```

Open the newly created folder in Finder and drag `Troop.xcodeproj` to your project.

In your project's settings, select your target and under **General** > **Embedded Binaries**, add the framework depending on the target OS (iOS, macOS, watchOS or tvOS).

## Usage

Import the module where needed:

```swift
import Troop
```

## Configuration

```swift
let configuration: Troop.Configuration = {
    var configuration = Troop.Configuration(prefix: "some-prefix", level: .debug)
    #if DEBUG
        configuration.level = .verbose
    #endif

    return configuration
}()

let log = Troop(configuration: Logger.configuration, destination: UnifiedLogDestination(subsystem: configuration.prefix, category: "Your App"))
```

## Logging statements

Use any of the following logging statements according to the level you need to be logged:

### Verbose
```swift
log.verbose(message)
```

### Info
```swift
log.info(message)
```

### Error
```swift
log.error(message)
```

### Debug
```swift
log.debug(message)
```

### Warning
```swift
log.warning(message)
```

## Example wrapper

In order to avoid using global variables and importing the framework in multiple files, use this wrapper:

```swift
struct Logger {

	private static let configuration: Troop.Configuration = {
		var configuration = Troop.Configuration(prefix: "some-prefix", level: .debug)
		#if DEBUG
			configuration.level = .verbose
		#endif

		return configuration
	}()
	private static let log = Troop(configuration: Logger.configuration, destination: UnifiedLogDestination(subsystem: configuration.prefix, category: "Your App"))

	static func verbose(_ message: String) {
		log.verbose(message)
	}

	static func info(_ message: String) {
		log.info(message)
	}

	static func error(_ message: String) {
		log.error(message)
	}

	static func debug(_ message: String) {
		log.debug(message)
	}

	static func warning(_ message: String) {
		log.warning(message)
	}

}
```

## Contributions

All contributions and suggestions are welcome and very much appreciated.

Should you have a feature request or a problem that you may experience, feel free to [open an issue](https://github.com/bojan/Troop/issues/new).

If you are willing to contribute by adding a feature or squashing a bug or two, please submit a pull request.

## Author

Bojan Dimovski
- [LinkedIn](http://linkedin.com/in/bdimovski)

## License

Troop is available under the WTFPL license. Check the [LICENSE](https://raw.githubusercontent.com/bojan/Troop/master/LICENSE) file for more info.
