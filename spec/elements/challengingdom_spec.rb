require 'spec_helper'

describe 'Challenging DOM'  do

	it 'Challenging DOM' do
		@page = ElementsPages::Navigation.new
		mainurl = ENV['SERVER']
		visit mainurl

		expect(@page.elements_page.main.dom[:href]).to eq(mainurl+"/challenging_dom")
		expect(@page.elements_page.main.dom.text).to eq("Challenging DOM")

	end
end