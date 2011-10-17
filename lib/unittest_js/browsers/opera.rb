module UnittestJS
  module Browser
    class Opera < Abstract
      def initialize(path = nil)
        @path = path || File.join(
          ENV['ProgramFiles'],
          'Opera',
          'opera.exe'
        )
      end

      def setup
        if windows?
          puts %{
            MAJOR ANNOYANCE on Windows.
            You have to shut down Opera manually after each test
            for the script to proceed.
            Any suggestions on fixing this is GREATLY appreciated!
            Thank you for your understanding.
          }
        end
      end
    end
  end
end

