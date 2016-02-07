Dir[Rails.root.join("spec/pages/*_page.rb")].each{ |f| require f }

module ElementsPages
 
  class Navigation
    include Capybara::DSL

    def elements_page
      Main.new
    end  

    def basicauth_page
      BasicAuth.new
    end

    def brokenimages_page
      BrokenImages.new
    end

    def challengingdom_page
      ChallengingDOM.new
    end
  end
end

