# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{quick_cipher}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Patrick Tulskie"]
  s.date = %q{2012-01-25}
  s.description = %q{A tool for quickly enciphering/deciphering text using basic alphabet transposition.}
  s.email = %q{PatrickTulskie@gmail.com}
  s.extra_rdoc_files = ["lib/quick_cipher.rb", "lib/quick_cipher/decipher.rb", "lib/quick_cipher/encipher.rb"]
  s.files = ["Rakefile", "lib/quick_cipher.rb", "lib/quick_cipher/decipher.rb", "lib/quick_cipher/encipher.rb", "readme.mdown", "spec/decipher_spec.rb", "spec/encipher_spec.rb", "spec/formatters/compact_progressbar_formatter.rb", "spec/rcov.opts", "spec/sample_data/deciphered.txt", "spec/sample_data/enciphered.txt", "spec/spec.opts", "spec/spec_helper.rb", "Manifest", "quick_cipher.gemspec"]
  s.homepage = %q{http://github.com/PatrickTulskie/quick_cipher}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Quick_cipher", "--main", "readme.mdown"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{quick_cipher}
  s.rubygems_version = %q{1.5.3}
  s.summary = %q{A tool for quickly enciphering/deciphering text using basic alphabet transposition.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
