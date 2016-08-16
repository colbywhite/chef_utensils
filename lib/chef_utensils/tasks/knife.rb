require 'chef/cookbook/metadata'
require 'chef/application/knife'

desc 'Upload the cookbook to the chef server'
task :upload, [:env] do |_, args|
  metadata = Chef::Cookbook::Metadata.new
  metadata.from_file 'metadata.rb'
  knife_args = %w(cookbook upload)
  knife_args += [metadata.name]
  knife_args += ['--freeze', '-E', args[:env]] if args[:env]
  Chef::Log.init $stdout
  Chef::Log.level :info
  Chef::Log.info "+ knife #{knife_args.join ' '}"
  Chef::Knife.run knife_args
end
