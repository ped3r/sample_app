require 'spec_helper'

describe User do
	before(:each) do
		@test_user = {:name => "Example user", :email => "user@example.com"}
	end
	
	it "should create a new instance based on valid attributes give on test_user" do
		User.create!(@test_user)
	end
	
	it "should require a name" do
		no_name_user = User.new(@test_user.merge(:name => ""))
		no_name_user.should_not be_valid
	end
end
