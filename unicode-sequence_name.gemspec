# -*- encoding: utf-8 -*-

require File.dirname(__FILE__) + "/lib/unicode/sequence_name/constants"

Gem::Specification.new do |gem|
  gem.name          = "unicode-sequence_name"
  gem.version       = Unicode::SequenceName::VERSION
  gem.summary       = "Returns the name of a Unicode codepoint sequence, if one exists"
  gem.description   = "[Unicode #{Unicode::SequenceName::UNICODE_VERSION}][Emoji #{Unicode::SequenceName::EMOJI_VERSION}] Returns the name of a Unicode code point sequence, if one exists"
  gem.authors       = ["Jan Lelis"]
  gem.email         = ["hi@ruby.consulting"]
  gem.homepage      = "https://github.com/janlelis/unicode-sequence_name"
  gem.license       = "MIT"

  gem.files         = Dir["{**/}{.*,*}"].select{ |path| File.file?(path) && path !~ /^pkg/ }
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.metadata      = { "rubygems_mfa_required" => "true" }

  gem.required_ruby_version = ">= 2.0"
end
