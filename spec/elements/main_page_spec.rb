require 'spec_helper'

describe 'Elements main page'  do

	it 'Check all link/elements on main page' do
		@page = ElementsPages::Navigation.new
		mainurl = ENV['SERVER']
		visit mainurl

		expect(@page.elements_page.main.abtest[:href]).to eq(mainurl+"/abtest")
		expect(@page.elements_page.main.abtest.text).to eq("A/B Testing")

		expect(@page.elements_page.main.basicauth[:href]).to eq(mainurl+"/basic_auth")
		expect(@page.elements_page.main.basicauth.text).to eq("Basic Auth")

		expect(@page.elements_page.main.brokeimage[:href]).to eq(mainurl+"/broken_images")
		expect(@page.elements_page.main.brokeimage.text).to eq("Broken Images")

		expect(@page.elements_page.main.dom[:href]).to eq(mainurl+"/challenging_dom")
		expect(@page.elements_page.main.dom.text).to eq("Challenging DOM")

		expect(@page.elements_page.main.checkbox[:href]).to eq(mainurl+"/checkboxes")
		expect(@page.elements_page.main.checkbox.text).to eq("Checkboxes")

		expect(@page.elements_page.main.contmenu[:href]).to eq(mainurl+"/context_menu")
		expect(@page.elements_page.main.contmenu.text).to eq("Context Menu")

		expect(@page.elements_page.main.disselement[:href]).to eq(mainurl+"/disappearing_elements")
		expect(@page.elements_page.main.disselement.text).to eq("Disappearing Elements")

		expect(@page.elements_page.main.dragdrop[:href]).to eq(mainurl+"/drag_and_drop")
		expect(@page.elements_page.main.dragdrop.text).to eq("Drag and Drop")

		expect(@page.elements_page.main.dropwdown[:href]).to eq(mainurl+"/dropdown")
		expect(@page.elements_page.main.dropwdown.text).to eq("Dropdown")

		expect(@page.elements_page.main.dynamicontent[:href]).to eq(mainurl+"/dynamic_content")
		expect(@page.elements_page.main.dynamicontent.text).to eq("Dynamic Content")

		expect(@page.elements_page.main.dynamicontrol[:href]).to eq(mainurl+"/dynamic_controls")
		expect(@page.elements_page.main.dynamicontrol.text).to eq("Dynamic Controls")

		expect(@page.elements_page.main.dynamicload[:href]).to eq(mainurl+"/dynamic_loading")
		expect(@page.elements_page.main.dynamicload.text).to eq("Dynamic Loading")

		expect(@page.elements_page.main.fdownload[:href]).to eq(mainurl+"/download")
		expect(@page.elements_page.main.fdownload.text).to eq("File Download")

		expect(@page.elements_page.main.fupload[:href]).to eq(mainurl+"/upload")
		expect(@page.elements_page.main.fupload.text).to eq("File Upload")

		expect(@page.elements_page.main.floatmenu[:href]).to eq(mainurl+"/floating_menu")
		expect(@page.elements_page.main.floatmenu.text).to eq("Floating Menu")

		expect(@page.elements_page.main.forgotpass[:href]).to eq(mainurl+"/forgot_password")
		expect(@page.elements_page.main.forgotpass.text).to eq("Forgot Password")

		expect(@page.elements_page.main.formauthen[:href]).to eq(mainurl+"/login")
		expect(@page.elements_page.main.formauthen.text).to eq("Form Authentication")

		expect(@page.elements_page.main.frames[:href]).to eq(mainurl+"/frames")
		expect(@page.elements_page.main.frames.text).to eq("Frames")

		expect(@page.elements_page.main.geolocation[:href]).to eq(mainurl+"/geolocation")
		expect(@page.elements_page.main.geolocation.text).to eq("Geolocation")

		expect(@page.elements_page.main.hovers[:href]).to eq(mainurl+"/hovers")
		expect(@page.elements_page.main.hovers.text).to eq("Hovers")

		expect(@page.elements_page.main.infinitescroll[:href]).to eq(mainurl+"/infinite_scroll")
		expect(@page.elements_page.main.infinitescroll.text).to eq("Infinite Scroll")

		expect(@page.elements_page.main.jquerymenu[:href]).to eq(mainurl+"/jqueryui/menu")
		expect(@page.elements_page.main.jquerymenu.text).to eq("JQuery UI Menus")

		expect(@page.elements_page.main.jsalert[:href]).to eq(mainurl+"/javascript_alerts")
		expect(@page.elements_page.main.jsalert.text).to eq("JavaScript Alerts")

		expect(@page.elements_page.main.jsonload[:href]).to eq(mainurl+"/javascript_error")
		expect(@page.elements_page.main.jsonload.text).to eq("JavaScript onload event error")

		expect(@page.elements_page.main.keypress[:href]).to eq(mainurl+"/key_presses")
		expect(@page.elements_page.main.keypress.text).to eq("Key Presses")

		expect(@page.elements_page.main.largedeep[:href]).to eq(mainurl+"/large")
		expect(@page.elements_page.main.largedeep.text).to eq("Large & Deep DOM")

		expect(@page.elements_page.main.multiplewind[:href]).to eq(mainurl+"/windows")
		expect(@page.elements_page.main.multiplewind.text).to eq("Multiple Windows")

		expect(@page.elements_page.main.nestedframe[:href]).to eq(mainurl+"/nested_frames")
		expect(@page.elements_page.main.nestedframe.text).to eq("Nested Frames")

		expect(@page.elements_page.main.notification[:href]).to eq(mainurl+"/notification_message")
		expect(@page.elements_page.main.notification.text).to eq("Notification Messages")

		expect(@page.elements_page.main.redirectlink[:href]).to eq(mainurl+"/redirector")
		expect(@page.elements_page.main.redirectlink.text).to eq("Redirect Link")

		expect(@page.elements_page.main.securedownload[:href]).to eq(mainurl+"/download_secure")
		expect(@page.elements_page.main.securedownload.text).to eq("Secure File Download")

		expect(@page.elements_page.main.shiftcontent[:href]).to eq(mainurl+"/shifting_content")
		expect(@page.elements_page.main.shiftcontent.text).to eq("Shifting Content")

		expect(@page.elements_page.main.slowresource[:href]).to eq(mainurl+"/slow")
		expect(@page.elements_page.main.slowresource.text).to eq("Slow Resources")

		expect(@page.elements_page.main.sortabledata[:href]).to eq(mainurl+"/tables")
		expect(@page.elements_page.main.sortabledata.text).to eq("Sortable Data Tables")

		expect(@page.elements_page.main.statuscode[:href]).to eq(mainurl+"/status_codes")
		expect(@page.elements_page.main.statuscode.text).to eq("Status Codes")

		expect(@page.elements_page.main.typos[:href]).to eq(mainurl+"/typos")
		expect(@page.elements_page.main.typos.text).to eq("Typos")

		expect(@page.elements_page.main.wysiwyg[:href]).to eq(mainurl+"/tinymce")
		expect(@page.elements_page.main.wysiwyg.text).to eq("WYSIWYG Editor")		
	end
end