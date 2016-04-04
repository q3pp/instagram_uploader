# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'instagram_uploader/version'

Gem::Specification.new do |spec|
  spec.name          = "instagram_uploader"
  spec.version       = InstagramUploader::VERSION
  spec.authors       = ["q3pp"]
  spec.email         = ["q3pp@yandex.ru"]

  spec.summary       = %q{Upload photo to instagram}
  spec.description   = %q{Gem allow upload photo to instagram}
  spec.homepage      = "https://github.com/q3pp/instagram_uploader"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_runtime_dependency "curb", "~> 0.9"
end
