require_relative "../lib/unicode/sequence_name"
require "minitest/autorun"

describe Unicode::SequenceName do
  describe ".sequence_name (alias .of)" do
    it "will return name for that sequence name" do
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
    end

    it "will return nil for characters without name" do
      assert_nil Unicode::SequenceName.of("\u{10c50}")
      assert_nil Unicode::SequenceName.of("bla")
    end
  end
end

