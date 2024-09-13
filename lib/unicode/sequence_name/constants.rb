# frozen_string_literal: true

module Unicode
  module SequenceName
    VERSION = "1.13.0"
    UNICODE_VERSION = "16.0.0"
    EMOJI_VERSION = "16.0"
    IVD_VERSION = "2022-09-13"
    DATA_DIRECTORY = File.expand_path(File.dirname(__FILE__) + "/../../../data/").freeze
    INDEX_FILENAME = (DATA_DIRECTORY + "/sequence_name.marshal.gz").freeze
  end
end
