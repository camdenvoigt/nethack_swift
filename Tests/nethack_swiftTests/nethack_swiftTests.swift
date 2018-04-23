import XCTest
@testable import nethack_swift

final class nethack_swiftTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(nethack_swift.text, "Hello, World!")
    }


    static var allTests = [
        ("testExample", testExample),
    ]
}
