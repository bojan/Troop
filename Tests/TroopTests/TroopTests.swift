import XCTest
@testable import Troop

final class TroopTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Troop().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
