import Foundation

extension String {
    /*!
    @var halfwidthcaseString
    @abstract 全角文字列を半角文字列に変換した文字列
    */
    public var halfwidthcaseString: String {
        let text:CFMutableStringRef = NSMutableString(string: self) as CFMutableStringRef
        CFStringTransform(text, nil, kCFStringTransformFullwidthHalfwidth, false)
        return text as String
    }

    /*!
    @var fullwidthcaseString
    @abstract 半角文字列を全角文字列に変換した文字列
    */
    public var fullwidthcaseString: String {
        let text:CFMutableStringRef = NSMutableString(string: self) as CFMutableStringRef
        CFStringTransform(text, nil, kCFStringTransformFullwidthHalfwidth, true)
        return text as String
    }

    /*!
    @var hiraganacaseString
    @abstract カタカナをひらがなに変換した文字列
    */
    public var hiraganacaseString: String {
        let text:CFMutableStringRef = NSMutableString(string: self) as CFMutableStringRef
        CFStringTransform(text, nil, kCFStringTransformHiraganaKatakana, true)
        return text as String
    }

    /*!
    @var katakanacaseString
    @abstract ひらがなをカタカナに変換した文字列
    */
    public var katakanacaseString: String {
        let text:CFMutableStringRef = NSMutableString(string: self) as CFMutableStringRef
        CFStringTransform(text, nil, kCFStringTransformHiraganaKatakana, false)
        return text as String
    }
}
