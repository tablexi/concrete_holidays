lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "concrete-holidays"
  gem.version       = '1.1.0'
  gem.authors       = ["Matthew Lineen"]
  gem.email         = ["matthew@lineen.com"]
  gem.description   = "Holiday calculations using concrete classes"
  gem.summary       = "Holiday calculations using concrete classes"
  gem.homepage      = "https://github.com/tablexi/concrete-holidays"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($/)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
