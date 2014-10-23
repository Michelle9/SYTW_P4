ENV['RACK_ENV'] = 'test'

require 'minitest/autorun'
require 'rack/test'
require_relative '../app.rb'


include Rack::Test::Methods
	
	def app
		Sinatra::Application
	end
	
describe "SYTW P4 - page" do
  
  it "Should return index" do
	get '/'
	assert last_response.ok?
  end  
  
  it "should return title" do
	get '/'
	assert_match "<title> SyTW - P4 </title>", last_response.body
  end
  
end