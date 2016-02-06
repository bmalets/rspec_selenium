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
  end
end

