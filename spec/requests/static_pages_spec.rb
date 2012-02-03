require 'spec_helper'

describe "StaticPages" do

	describe "Home Page" do
		it "has the header 'Blogdown'" do
			visit "/static_pages/home"
			page.should have_selector('h1', :text => 'Blogdown')
		end

		it "has the title 'Home'" do
			visit "/static_pages/home"
			page.should have_selector('title', :text => 'Blogdown - Blogging with Markdown - Home')
		end
	end

	describe "About Page" do
		it "has the content 'About'" do
			visit "/static_pages/about"
			page.should have_selector('h1', :text => 'About')
		end

		it "has the title 'About'" do
			visit "/static_pages/about"
			page.should have_selector('title', :text => 'Blogdown - Blogging with Markdown - About')
		end
	end

	describe "Help Page" do
		it "should have the content 'Help'" do
			visit "/static_pages/help"
			page.should have_selector('h1', :text => 'Help')
		end

		it "has the title 'Help'" do
			visit "/static_pages/help"
			page.should have_selector('title', :text => 'Blogdown - Blogging with Markdown - Help')
		end
	end
end
