require 'rake'
require 'rake/tasklib'
require 'irb'
require 'irb/completion'

module IRB
  class RakeTask < ::Rake::TaskLib

    # Name of task.
    #
    # default:
    #   :spec
    attr_accessor :name

    def initialize(*args)
      @name = args.shift || :console

      yield self if block_given?

      desc("Start the console") unless ::Rake.application.last_comment

      task name do
        ARGV.clear
        IRB.start
      end
    end

  end
end
