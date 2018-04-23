import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(nethack_swiftTests.allTests),
    ]
}
#endif