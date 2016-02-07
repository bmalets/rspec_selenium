require 'spec_helper'

describe 'Broken images'  do

	it 'Broken images' do
		@page = ElementsPages::Navigation.new

		$mainurl = ENV['SERVER']
		visit $mainurl

		expect(@page.elements_page.main.brokeimage[:href]).to eq($mainurl+"/broken_images")
		expect(@page.elements_page.main.brokeimage.text).to eq("Broken Images")

		@page.elements_page.main.brokeimage.click

		expect(@page.brokenimages_page.title.text).to eq("Broken Images")
	
  def status
  	 RestClient.get $mainurl+"/broken_images"
		 all_images = all(:tag_name, 'img')

  	 all_images.each do |img|
    	RestClient.get img[:src] do |response, request, result|
      expect(response.code).to eq 200
      end
    end
  end
  
  status
	
	end
end

