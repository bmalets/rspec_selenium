class BrokenImages < SitePrism::Page
	set_url '/broken_images'

	element	:title, :xpath,"//div/h3"
end