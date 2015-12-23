import XCTest
@testable import KanaSwift

class KanaSwiftTests: XCTestCase {
    static let hiragana:String = "こんにちわ世界"
    static let katakana:String = "コンニチワ世界"

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testHiraganacase() {
        print(KanaSwiftTests.hiragana.katakanacaseString)
    }
}
