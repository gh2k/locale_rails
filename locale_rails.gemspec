# -*- encoding: utf-8 -8, mode: ruby -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)
 
Gem::Specification.new do |s|
  s.name        = "locale_rails"
  s.version     = "2.0.6"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Masao Mutoh']
  s.email       = ["mutomasa@gmail.com"]
  s.homepage    = "http://rubyforge.org/projects/locale"
  s.summary     = "Ruby i18n"
  s.description = "Ruby-Locale is the pure ruby library which provides basic APIs for localization. See http://www.yotabanana.com/hiki/ruby-locale.html."
 
  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "locale_rails"
 
  s.files        = Dir.glob("{sample,lib, test}/**/*") + %w(LICENSE README.rdoc COPYING ChangeLog)
  s.require_path = 'lib'
end
