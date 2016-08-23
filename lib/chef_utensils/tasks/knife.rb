require 'chef/cookbook/metadata'
require 'chef/application/knife'

desc 'Upload the cookbook to the chef server'
task :upload, [:env, :freeze] do |_, args|
  metadata = Chef::Cookbook::Metadata.new
  metadata.from_file 'metadata.rb'
  knife_args = %w(cookbook upload)
  knife_args += [metadata.name]
  knife_args += ['-E', args[:env]] if args[:env]
  knife_args += ['--freeze'] if args[:freeze] == 'true'
  Chef::Log.init $stdout
  Chef::Log.level :info
  Chef::Log.info "+ knife #{knife_args.join ' '}"
  Chef::Knife.run knife_args
end
