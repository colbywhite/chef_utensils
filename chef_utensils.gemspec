# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chef_utensils/version'

Gem::Specification.new do |spec|
  spec.name = 'chef_utensils'
  spec.version = ChefUtensils::VERSION
  spec.authors = ['Colby M. White']
  spec.email = ['colbywhite@users.noreply.github.com']

  spec.summary = 'A project to hold common Rake tasks for Chef Cookbooks.'
  spec.description = 'A project to hold common Rake tasks for Chef Cookbooks.'\
                        'The name is attempting to deliver yet another cooking pun.'
  spec.homepage = 'https://bitbucket.org/wfmdigitalweb/chef_utensils'
  spec.license = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata) then
  #   spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  # end

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = %w(lib)

  spec.add_development_dependency 'bundler', '~> 1.12'
  # TODO: find a way to just depend on a specific version of a chef-dk
  spec.add_dependency 'rake', '~> 11.2.2'
  spec.add_dependency 'chefspec', '~> 4.7.0'
  spec.add_dependency 'rubocop', '~> 0.42.0'
  spec.add_dependency 'foodcritic', '~> 6.3'
  spec.add_dependency 'chef', '~> 12.12.15'
  spec.add_dependency 'rake-foodcritic', '~> 0.0.3'
  spec.add_dependency 'test-kitchen', '~> 1.10.2'
  spec.add_dependency 'kitchen-dokken', '~> 0.0.31'
  spec.add_dependency 'kitchen-inspec', '~> 0.15.0'
end
