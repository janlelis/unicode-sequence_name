# Unicode::SequenceName [![[version]](https://badge.fury.io/rb/unicode-sequence_name.svg)](https://badge.fury.io/rb/unicode-sequence_name)  [![[ci]](https://github.com/janlelis/unicode-sequence_name/workflows/Test/badge.svg)](https://github.com/janlelis/unicode-sequence_name/actions?query=workflow%3ATest)

Returns the name of a Unicode codepoint sequence, if one exists.

Unicode version: **13.0** (March 2020)

Emoji version: **13.1** (September 2020)

IVD version: **2020-11-06** (November 2020)

Supported Rubies: **3.0**, **2.7**, **2.6**, **2.5**

Old Rubies which might still work: **2.4**, **2.3**, **2.2**, **2.1**, **2.0**

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
Unicode::SequenceName.of "👨‍🍼" # => MAN FEEDING BABY
Unicode::SequenceName.of "❤️‍🔥" # => HEART ON FIRE
```

Names for singular codepoints are not included, you can use [unicode-name](https://github.com/janlelis/unicode-name) for that purpose.

## Also See

- [uniscribe](https://github.com/janlelis/uniscribe) - cli utility that makes use of unicode_sequence-name
- [unicode-x](https://github.com/janlelis/unicode-x) - more Unicode related micro libraries

## MIT License

- Copyright (C) 2017-2020 Jan Lelis <https://janlelis.com>. Released under the MIT license.
- Unicode data: https://www.unicode.org/copyright.html#Exhibit1
