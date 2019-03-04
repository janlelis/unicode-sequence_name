# Unicode::SequenceName [![[version]](https://badge.fury.io/rb/unicode-sequence_name.svg)](https://badge.fury.io/rb/unicode-sequence_name)  [![[travis]](https://travis-ci.org/janlelis/unicode-sequence_name.png)](https://travis-ci.org/janlelis/unicode-sequence_name)

Returns the name of a Unicode codepoint sequence, if one exists.

Unicode / Emoji version: **12.0** (March / February 2019)

Supported Rubies: **2.6**, **2.5**, **2.4**

Old Rubies but might still work: **2.3**, **2.2**, **2.1**, **2.0**

## Usage

```ruby
require "unicode/sequence_name"

Unicode::SequenceName.of "‼︎" # => "DOUBLE EXCLAMATION MARK (text style)"
Unicode::SequenceName.of "㓟︀" # => "CJK COMPATIBILITY IDEOGRAPH-2F81F"
Unicode::SequenceName.of "င︀" # => "MYANMAR LETTER NGA (dotted form)"
Unicode::SequenceName.of "நி" # => "TAMIL SYLLABLE NI"
Unicode::SequenceName.of "🇺🇳" # => "UNITED NATIONS"
Unicode::SequenceName.of "🏴󠁧󠁢󠁳󠁣󠁴󠁿" # => "SCOTLAND"
```

## Also See

- [uniscribe](https://github.com/janlelis/uniscribe) - cli utility that makes use of unicode_sequence-name
- [unicode-name](https://github.com/janlelis/unicode-name) - single codepoint names
- [unicode-x](https://github.com/janlelis/unicode-x) - more Unicode related micro libraries

## MIT License

- Copyright (C) 2017-2019 Jan Lelis <http://janlelis.com>. Released under the MIT license.
- Unicode data: http://www.unicode.org/copyright.html#Exhibit1
