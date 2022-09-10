# frozen_string_literal: true

module Unicode
  module SequenceName
    VERSION = "1.10.0"
    UNICODE_VERSION = "15.0.0"
    EMOJI_VERSION = "14.0"
    IVD_VERSION = "2020-11-06"
    DATA_DIRECTORY = File.expand_path(File.dirname(__FILE__) + "/../../../data/").freeze
    INDEX_FILENAME = (DATA_DIRECTORY + "/sequence_name.marshal.gz").freeze
  end
end
