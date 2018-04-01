
  module PageObjects
    class Application
      def initialize
        @pages = {}
      end

      def home
        @pages[:home] ||= Pages::HomePage.new
      end

      def login
        @pages[:login] ||= Pages::LoginPage.new
      end

      def login
        @pages[:userHome] ||= Pages::UserHome.new
      end

    end
  end
