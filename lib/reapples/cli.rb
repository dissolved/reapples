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
          puts "Try 'exit', it is the only feature."
        end
      end
    end
  end
end