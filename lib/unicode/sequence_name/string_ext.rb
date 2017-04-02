require_relative "../sequence_name"

class String
  # Optional string extension for your convenience
  def unicode_sequence_name
    Unicode::SequenceName.of(self)
  end
end
