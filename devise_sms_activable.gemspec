# -*- encoding: utf-8 -*-
$LOAD_PATH.unshift(File.expand_path('../lib', __FILE__))
require 'devise_sms_activable/version'

Gem::Specification.new do |s|
  s.name         = "devise_sms_activable"
  s.version      = DeviseSmsActivable::VERSION.dup
  s.platform     = Gem::Platform::RUBY
  s.authors      = ["Stefano Valicchia"]
  s.email        = ["stefano.valicchia@gmail.com"]
  s.homepage     = "https://github.com/giano/devise_sms_activable"
  s.summary      = "An SMS based activation strategy for Devise"
  s.description  = "It adds support for sending activation tokens via SMS and accepting them."
  s.files        = Dir["{app,config,lib}/**/*"] + %w[LICENSE README.rdoc]
  s.test_files    = `git ls-files -- test/*`.split("\n")
  s.require_path = "lib"
  s.rdoc_options = ["--main", "README.rdoc", "--charset=UTF-8"]

  s.required_ruby_version     = '>= 2.1.0'

  s.add_runtime_dependency 'railties', '>= 3.2.6', '< 6.0'
  s.add_runtime_dependency 'devise', '>= 3.0.0', '< 5.0'

  s.add_development_dependency 'bundler', '>= 1.3.0', '< 2.0'
  s.add_development_dependency 'sqlite3', '~> 1.3.10'
  s.add_development_dependency 'minitest'
  s.add_development_dependency 'coveralls'
end
