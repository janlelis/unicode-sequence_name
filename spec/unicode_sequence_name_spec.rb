require_relative "../lib/unicode/sequence_name"
require "minitest/autorun"

describe Unicode::SequenceName do
  describe ".sequence_name (alias .of)" do
    it "will return name for that sequence" do
      assert_equal "DOUBLE EXCLAMATION MARK (text style)", Unicode::SequenceName.of("‼︎")
      assert_equal "CJK COMPATIBILITY IDEOGRAPH-2F81F", Unicode::SequenceName.of("㓟︀")
      assert_equal "MYANMAR LETTER NGA (dotted form)", Unicode::SequenceName.of("င︀")
      assert_equal "TAMIL SYLLABLE NI", Unicode::SequenceName.of("நி")
      assert_equal "FLAG: UNITED NATIONS", Unicode::SequenceName.of("🇺🇳")
      assert_equal "FLAG: SCOTLAND", Unicode::SequenceName.of("🏴󠁧󠁢󠁳󠁣󠁴󠁿")
      assert_equal "PERSON: CURLY HAIR", Unicode::SequenceName.of("🧑‍🦱") # Emoji 12.1
      assert_equal "MAN FEEDING BABY", Unicode::SequenceName.of("👨‍🍼") # Emoji 13.0
      assert_equal "HEART ON FIRE", Unicode::SequenceName.of("❤️‍🔥") # Emoji 13.1
      assert_equal "HANDSHAKE: LIGHT SKIN TONE, MEDIUM-DARK SKIN TONE", Unicode::SequenceName.of("🫱🏻‍🫲🏾") # Emoji 14.0
      assert_equal "BLACK BIRD", Unicode::SequenceName.of("🐦‍⬛") # Emoji 15.0
      assert_equal "HEAD SHAKING HORIZONTALLY", Unicode::SequenceName.of("🙂‍↔️") # Emoji 15.1
      assert_equal "LEFT SINGLE QUOTATION MARK (right-justified fullwidth form)", Unicode::SequenceName.of("‘︁") # Unicode 16.0
    end

    it "will return name for that sequence (not fully qualified: VS16 missing)" do
      assert_equal "COUPLE WITH HEART: WOMAN, WOMAN, DARK SKIN TONE, MEDIUM SKIN TONE", Unicode::SequenceName.of("👩🏿‍❤‍👩🏽")
      assert_equal "MAN JUDGE", Unicode::SequenceName.of("👨‍⚖")
      assert_equal "WOMAN BOUNCING BALL", Unicode::SequenceName.of("⛹‍♀️") # First VS16 missing
      assert_equal "WOMAN BOUNCING BALL", Unicode::SequenceName.of("⛹️‍♀") # Second VS16 missing
    end

    it "will return nil for characters without name" do
      assert_nil Unicode::SequenceName.of("\u{10c50}")
      assert_nil Unicode::SequenceName.of("bla")
    end

    it "will return nil for single codepoints" do
      assert_nil Unicode::SequenceName.of("⏳")
    end
  end

  describe ".fully_qualified" do
    it "will *not* return name for that sequence (not fully qualified: VS16 missing)" do
      assert_nil Unicode::SequenceName.fully_qualified("👩🏿‍❤‍👩🏽")
      assert_nil Unicode::SequenceName.fully_qualified("👨‍⚖")
      assert_nil Unicode::SequenceName.fully_qualified("⛹‍♀️") # First VS16 missing
      assert_nil Unicode::SequenceName.fully_qualified("⛹️‍♀") # Second VS16 missing
    end
  end
end

