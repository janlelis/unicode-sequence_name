module Unicode
  module SequenceName
    VERSION = "1.2.0".freeze
    UNICODE_VERSION = "12.0.0".freeze
    EMOJI_VERSION = "12.0".freeze
    DATA_DIRECTORY = File.expand_path(File.dirname(__FILE__) + '/../../../data/').freeze
    INDEX_FILENAME = (DATA_DIRECTORY + '/sequence_name.marshal.gz').freeze
  end
end

