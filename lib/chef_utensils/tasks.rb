# load rubocop tasks
require 'rubocop/rake_task'
RuboCop::RakeTask.new

# load rspec tasks
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new :rspec

desc 'Shorter alias for rspec'
task spec: :rspec

# load foodcritic tasks
require 'rake-foodcritic'

desc 'Shorter alias for chef:foodcritic'
task foodcritic: 'chef:foodcritic'

# load kitchen tasks
require 'kitchen/rake_tasks'
Kitchen::RakeTasks.new

desc 'Shorter alias for kitchen:all'
task kitchen: 'kitchen:all'

desc 'Run all linting tools'
task lint: [:rubocop, :foodcritic]
