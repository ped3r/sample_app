require 'spec_helper'

describe "LayoutLinks" do

	before(:each) do
		@baseTitle = "Ruby on Rails Tutorial Sample App | "
	end
	
    it "should have a Home page at '/'" do
      get '/'
      response.should have_selector('title', :content => @baseTitle + "Home")
    end
	
	it "should have a Home page at '/contact'" do
      get '/contact'
      response.should have_selector('title', :content => @baseTitle + "Contact")
    end
  
	it "should have a Home page at '/about'" do
      get '/about'
      response.should have_selector('title', :content => @baseTitle + "About")
    end
	
	it "should have a Home page at '/help'" do
      get '/help'
      response.should have_selector('title', :content => @baseTitle + "Help")
    end
	
	it "should have a Home page at '/signup'" do
      get '/signup'
      response.should have_selector('title', :content => @baseTitle + "Sign up")
    end
	
	
end
