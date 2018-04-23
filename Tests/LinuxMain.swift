import XCTest

import nethack_swiftTests

var tests = [XCTestCaseEntry]()
tests += nethack_swiftTests.allTests()
XCTMain(tests)