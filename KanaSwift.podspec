Pod::Spec.new do |s|

  s.name         = "KanaSwift"
  s.version      = "2.0.0"
  s.summary      = "String converter for Swift. ex Halfwidth/Fullwidth, Hiragana/Katakana"

  s.description  = <<-DESC
日本語向けの変換ライブラリーです。
* 全角文字列、半角文字列の相互変換
* ひらがな、カタカナ
の相互変換します。実装はCFStringTransformのSwiftラッパーです。
  DESC

  s.homepage     = "https://github.com/shogo4405/KanaSwift"
  s.license      = "New BSD"
  s.author             = { "shogo4405" => "shogo4405@gmail.com" }
  s.authors            = { "shogo4405" => "shogo4405@gmail.com" }
  s.social_media_url   = "http://twitter.com/shogo4405"
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/shogo4405/KanaSwift.git", :tag => "2.0.0" }

  s.source_files  = "KanaSwift", "KanaSwift/*"

end

