## KanaSwift
Swift向けの半角、全角などの相互変換ライブラリーです。

## インストール方法
### Cocoapod
    pod 'KanaSwift'

## 利用方法
Stringを拡張しています
```swfit
import KanaSwift

// 半角文字列を全角文字列に
"Ｈｅｌｌｏ　Ｗｏｒｌｄ！！".halfwidthcaseString // Hello World!!
// 全角文字列を半角文字列に
"Hello World!!".fullwidthcaseString // Ｈｅｌｌｏ　Ｗｏｒｌｄ！！
// ひらがなをカタカナに
"コンニチワ世界".hiraganacaseString // こんにちわ世界
// カタカナをひらがなに
"こんにちわ世界".katakanacaseString // コンニチワ世界
```

## 内部的には
ただのCFStringTransformのSwiftラッパーです。

## リンク
* JavaScript, ActionScript3, Java版は次のURLで公開しています。
 * https://github.com/shogo4405/KanaXS
* どぼん！さんが.NETな環境でつかえるC#版を公開されています。
 * http://wiki.dobon.net/index.php?free%2FkanaxsCSharp

## ライセンス情報
New BSD Licenseで公開しています。詳細はLICENSEを参照してください。
