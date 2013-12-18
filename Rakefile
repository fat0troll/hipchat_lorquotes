require "bundler/gem_tasks"

desc 'Open an development console'
task :console do
  sh "irb -rubygems -I lib -r hipchat_lorquotes.rb"
end

desc 'Post quote'
task :post_quote do
  require 'hipchat_lorquotes'
  HipchatLorquotes.post_lorquote
end
