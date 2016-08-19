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

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = %w(lib)

  spec.add_development_dependency 'bundler', '1.12.5'
  spec.add_development_dependency 'rake', '11.2.2'
  spec.add_development_dependency 'rubocop', '0.42.0'
  spec.add_development_dependency 'rspec', '3.5.0'
  # No runtime dependencies because this is expected to be installed into chefdk v0.17.17 and
  # it is not recommended to install chefdk via gems or bundler. As long as it installed into the
  # chefdk's embedded ruby, its dependencies will work just fine.
  # TODO add some runtime check that it is running in chefdk so an intelligent error comes back if it is not.
end
