module UnittestJS
  module Browser
    class Firefox < Abstract
      def initialize(path = nil)
        @path = path || File.join(
          ENV['ProgramFiles'],
          'Mozilla Firefox',
          'firefox.exe'
        )
      end
      
      def supported?
        (windows? || macos?) && installed?
      end
    end
  end
end
