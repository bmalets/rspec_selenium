require 'spec_helper'

describe 'basic Auth'  do

	it 'Negative auth' do
		@page = ElementsPages::Navigation.new

		mainurl = ENV['SERVER']
		visit mainurl

		expect(@page.elements_page.main.basicauth[:href]).to eq(mainurl+"/basic_auth")
		expect(@page.elements_page.main.basicauth.text).to eq("Basic Auth")

		visit "http://admin:admin@the-internet.herokuapp.com/basic_auth"

		expect(@page.basicauth_page.title.text).to eq("Basic Auth")

		expect(@page.basicauth_page.content.text).to eq("Congratulations! You must have the proper credentials.")
	end
end

