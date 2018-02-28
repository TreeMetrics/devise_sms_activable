$:.unshift File.join(File.dirname(__FILE__), 'lib')
require 'rubygems'
require 'bundler'
require 'rake/testtask'
require 'rdoc/task'
require 'devise_sms_activable/version'

desc 'Default: Run DeviseSmsActivable unit tests'
task default: :test

Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.test_files = FileList['test/*test*.rb']
  t.verbose = true
  t.warning = false
end
