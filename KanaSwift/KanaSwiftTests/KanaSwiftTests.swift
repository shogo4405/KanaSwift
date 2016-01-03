import XCTest
@testable import KanaSwift

final class KanaSwiftTests: XCTestCase {

    var hiragana:String =
    "ぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑをんゔゕゖゝゞ"

    var halfwidthAlphabed:String = "!\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~"
    var fullwidthAlphabed:String = "！＂＃＄％＆＇（）＊＋，－．／０１２３４５６７８９：；＜＝＞？＠ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ［＼］＾＿｀ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ｛｜｝～"

    var fullwidthKatakana:String =
    "ァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱヲンヴゕゖヽヾ"
    var halfwidthKatakana:String = "ｧｱｨｲｩｳｪｴｫｵｶｶﾞｷｷﾞｸｸﾞｹｹﾞｺｺﾞｻｻﾞｼｼﾞｽｽﾞｾｾﾞｿｿﾞﾀﾀﾞﾁﾁﾞｯﾂﾂﾞﾃﾃﾞﾄﾄﾞﾅﾆﾇﾈﾉﾊﾊﾞﾊﾟﾋﾋﾞﾋﾟﾌﾌﾞﾌﾟﾍﾍﾞﾍﾟﾎﾎﾞﾎﾟﾏﾐﾑﾒﾓｬﾔｭﾕｮﾖﾗﾘﾙﾚﾛヮﾜヰヱｦﾝｳﾞゕゖヽヾ"

    func testHiragana() {
        // XXX: 半角カタカナが全角カタカナになるみたいです。
        XCTAssertEqual(hiragana, halfwidthKatakana.hiraganacaseString)
        XCTAssertEqual(hiragana, fullwidthKatakana.hiraganacaseString)
    }

    func testKatakana() {
        XCTAssertEqual(fullwidthKatakana, hiragana.katakanacaseString)
    }

    func testHalfwidth() {
        XCTAssertEqual(halfwidthKatakana, fullwidthKatakana.halfwidthcaseString)
        XCTAssertEqual(" ", "　".halfwidthcaseString)
        XCTAssertEqual(halfwidthAlphabed, fullwidthAlphabed.halfwidthcaseString)
    }

    func testFullwidth() {
        XCTAssertEqual("　", " ".fullwidthcaseString)
        XCTAssertEqual(fullwidthKatakana, halfwidthKatakana.fullwidthcaseString)
        XCTAssertEqual(fullwidthAlphabed, halfwidthAlphabed.fullwidthcaseString)
    }
}
