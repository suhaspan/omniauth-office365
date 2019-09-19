# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/ms_office365/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-ms-office365"
  spec.version       = Omniauth::Office365::VERSION
  spec.authors       = ['Suhas Nehete', 'Josef Šimánek']
  spec.email         = ['suhas0284@gmail.com', 'josef.simanek@gmail.com']
  spec.summary       = %q{Microsoft Office365 v2.0 OmniAuth OAuth2 Provider}
  spec.description   = %q{Microsoft Office365 v2.0 OmniAuth OAuth2 Provider. Create an account and generate client_id and client_secret.}
  spec.homepage      = "https://github.com/suhaspan/omniauth-office365"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "omniauth-oauth2", '~> 1.3'

  spec.add_development_dependency "sinatra"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "mocha"
end
