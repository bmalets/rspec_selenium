RSpec.configure do |config|

  config.before(:context, :admin) do
    @page = ElementsPages::Navigation.new
    @page.login_page.load
    
    page.driver.browser.manage.window.resize_to(1400,1000)

    @page.login_page.has_login_input?
    @page.login_page.has_password_input?
    @page.login_page.has_login_button?
    
    @page.login_page.login_input.set ENV['LOGIN']  
    @page.login_page.password_input.set ENV['PASSWORD']
    
    @page.login_page.login_button.click
    expect(@page.login_page.main_error.has_id_error_main?).to be false #check if present main error
end

  config.after do
  end

end

