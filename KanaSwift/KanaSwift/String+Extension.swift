import Foundation

extension String {
    /*!
    @var hankakucaseString
    @abstract 全角英数字を半角英数字に変換した文字列
    */
    public var hankakucaseString: String {
        var letters:[Character] = []
        for var code in self.unicodeScalars {
            if (0xFF01 <= code.value && code.value <= 0xFF5E) {
                code = UnicodeScalar(code.value - 0xFEE0)
            } else if (code.value == 0x3000) {
                code = UnicodeScalar(0x0020)
            }
            letters.append(Character(code))
        }
        return String(letters)
    }

    /*!
    @var hankakucaseString
    @abstract 半角英数字を全角英数字に変換した文字列
    */
    public var zenkakucaseString: String {
        var letters:[Character] = []
        for var code in self.unicodeScalars {
            if (0x0021 <= code.value && code.value <= 0x007E) {
                code = UnicodeScalar(code.value + 0xFEE0)
            } else if (code.value == 0x0020) {
                code = UnicodeScalar(0x3000)
            }
            letters.append(Character(code))
        }
        return String(letters)
    }

    public var hiraganacaseString: String {
        var letters:[Character] = []
        for var code in self.unicodeScalars {
            if (0x30A1 <= code.value && code.value <= 0x30F6) {
                code = UnicodeScalar(code.value - 0x0060)
            }
            letters.append(Character(code))
        }
        return String(letters)
    }

    public var katakanacaseString: String {
        var letters:[Character] = []
        for var code in self.unicodeScalars {
            if (0x3041 <= code.value && code.value <= 0x3096) {
                code = UnicodeScalar(code.value + 0x0060)
            }
            letters.append(Character(code))
        }
        return String(letters)
    }
}
