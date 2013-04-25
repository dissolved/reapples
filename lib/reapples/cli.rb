require 'shellwords'

module Reapples
  class CLI
    def self.run
      new.run
    end

    def run
      print "Hello! REapPLes ready.\n"

      while command = Readline.readline("> ", true)
        case command
        when "exit"
          print "Goodbye, I hope you had fun!\n"
          exit 0
        else
          puts "Executing: osascript -s s -e #{command.shellescape}"
          result = `osascript -s s -e #{command.shellescape}`
          puts result
        end
      end
    end
  end
end