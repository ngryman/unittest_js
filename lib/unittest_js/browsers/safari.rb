module UnittestJS
  module Browser
    class Safari < UnittestJS::Browser::WebKit
      def initialize(version = nil)
        @version = version
        @path = path || File.join(
          ENV['ProgramFiles'],
          'Safari',
          'Safari.exe'
        ) 
      end
      
      def setup
        unless windows?
          super::setup
        end
      end
      
      def visit(url)
        unless windows?
          super::visit(url)
        else
          system("\"#{path}\" #{url}")
        end
      end
      
      def supported?
        (macos? || windows?) && installed?
      end
      
      def name
        @version ? "Safari #{@version}" : 'Safari'
      end
    end
  end
end
