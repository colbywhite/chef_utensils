# load kitchen tasks
require 'kitchen/rake_tasks'
Kitchen::RakeTasks.new

desc 'Shorter alias for kitchen:all'
task kitchen: 'kitchen:all'
