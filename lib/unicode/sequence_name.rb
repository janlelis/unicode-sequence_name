require_relative "sequence_name/constants"

module Unicode
  module SequenceName
    def self.sequence_name(string)
      codepoints = get_codepoint_values(string)
      require_relative "sequence_name/index" unless defined? ::Unicode::SequenceName::INDEX
      if res = INDEX[:SEQUENCES][codepoints]
        res
      else
        nil
      end
    end
    class << self; alias of sequence_name; end

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

    class << self
      private :get_codepoint_values
    end
  end
end

