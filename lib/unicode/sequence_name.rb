require_relative "sequence_name/constants"

module Unicode
  module SequenceName
    def self.sequence_name(string)
      codepoints = get_codepoint_values(string)
      require_relative "sequence_name/index" unless defined? ::Unicode::SequenceName::INDEX
      if res = INDEX[:SEQUENCES][codepoints]
        insert_words(res)
      elsif fqe = INDEX[:EMOJI_NOT_QUALIFIED][string]
        res = INDEX[:SEQUENCES][get_codepoint_values(fqe)]
        insert_words(res)
      else
        nil
      end
    end
    class << self; alias of sequence_name; end

    def self.fully_qualified(string)
      codepoints = get_codepoint_values(string)
      require_relative "sequence_name/index" unless defined? ::Unicode::SequenceName::INDEX
      if res = INDEX[:SEQUENCES][codepoints]
        insert_words(res)
      else
        nil
      end
    end

    def self.get_codepoint_values(string)
      if string.valid_encoding?
        return string.codepoints
      elsif string.encoding.name == "UTF-8"
        begin
          return string.unpack("U*")
        rescue ArgumentError
        end
      end

      raise(ArgumentError, "Unicode::SequenceName.of must be given a valid string")
    end

    def self.insert_words(raw_name)
      raw_name.chars.map{ |char|
        codepoint = char.ord
        if codepoint < INDEX[:REPLACE_BASE]
          char
        else
          "#{INDEX[:COMMON_WORDS][codepoint - INDEX[:REPLACE_BASE]]} "
        end
      }.join.chomp
    end

    class << self
      private :get_codepoint_values
      private :insert_words
    end
  end
end

