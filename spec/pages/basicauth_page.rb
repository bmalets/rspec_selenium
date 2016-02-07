class BasicAuth < SitePrism::Page
	set_url '/basic_auth'

	element :title, 	:xpath,"//div/h3"
	element :content, :xpath,"//div/p"
end