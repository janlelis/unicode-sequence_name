require_relative 'constants'

module Unicode
  module SequenceName
    INDEX = Marshal.load(Gem.gunzip(File.binread(INDEX_FILENAME)))
  end
end
