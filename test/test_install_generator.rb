require 'test_helper'
require 'rails/generators/test_case'
require 'generators/devise_sms_activable/install_generator'

class TestInstallGenerator < Rails::Generators::TestCase
  tests DeviseSmsActivable::Generators::InstallGenerator
  destination File.expand_path('../tmp', __FILE__)
  setup :prepare_destination

  test 'Assert all files are properly created' do
    run_generator
    # assert_file 'config/initializers/devise_security_extension.rb'
    assert_file 'config/locales/devise_sms_activable.en.yml'
  end
end
