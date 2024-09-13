# Unicode::SequenceName [![[version]](https://badge.fury.io/rb/unicode-sequence_name.svg)](https://badge.fury.io/rb/unicode-sequence_name) [![[ci]](https://github.com/janlelis/unicode-sequence_name/workflows/Test/badge.svg)](https://github.com/janlelis/unicode-sequence_name/actions?query=workflow%3ATest)

Returns the name of a Unicode codepoint sequence (= more than one codepoint involved), if one exists.

Unicode version: **16.0.0** (September 2024)

Emoji version: **16.0** (September 2024)

IVD version: **2022-09-13** (September 2022)

Supported Rubies: **3.3**, **3.2**, **3.1**, **3.0**

Old Rubies which might still work: **2.7**, **2.6**, **2.5**, **2.4**, **2.3**, **2.X**

## Usage

```ruby
require "unicode/sequence_name"

Unicode::SequenceName.of "‼︎" # => "DOUBLE EXCLAMATION MARK (text style)"
Unicode::SequenceName.of "㓟︀" # => "CJK COMPATIBILITY IDEOGRAPH-2F81F"
Unicode::SequenceName.of "င︀" # => "MYANMAR LETTER NGA (dotted form)"
Unicode::SequenceName.of "நி" # => "TAMIL SYLLABLE NI"
Unicode::SequenceName.of "🇺🇳" # => "Flag: UNITED NATIONS"
Unicode::SequenceName.of "🏴󠁧󠁢󠁳󠁣󠁴󠁿" # => "SCOTLAND"
Unicode::SequenceName.of "🧑‍🦱" # => "PERSON: CURLY HAIR"
Unicode::SequenceName.of "👨‍🍼" # => "MAN FEEDING BABY"
Unicode::SequenceName.of "❤️‍🔥" # => "HEART ON FIRE"
Unicode::SequenceName.of "🫱🏻‍🫲🏾" # => "HANDSHAKE: LIGHT SKIN TONE, MEDIUM-DARK SKIN TONE"
Unicode::SequenceName.of "🐦‍⬛" # => "BLACK BIRD"
Unicode::SequenceName.of "🙂‍↔️" # => "HEAD SHAKING HORIZONTALLY"
Unicode::SequenceName.of "‘︁" # => "LEFT SINGLE QUOTATION MARK (right-justified fullwidth form)"
```

Names for singular codepoints are not included, you can use [unicode-name](https://github.com/janlelis/unicode-name) for that purpose.

## Also See

- [uniscribe](https://github.com/janlelis/uniscribe) - cli utility that makes use of unicode_sequence-name
- [unicode-x](https://github.com/janlelis/unicode-x) - more Unicode related micro libraries

## MIT License

- Copyright (C) 2017-2024 Jan Lelis <https://janlelis.com>. Released under the MIT license.
- Unicode data: https://www.unicode.org/copyright.html#Exhibit1
