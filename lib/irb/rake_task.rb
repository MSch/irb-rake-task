require 'rake'
require 'rake/tasklib'
require 'irb'
require 'irb/completion'

desc("Open IRB console")
task :console do
  ARGV.clear
  IRB.start
end
