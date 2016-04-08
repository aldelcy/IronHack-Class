require "rspec"
require "rack/test"
require_relative "../app.rb"
require_relative "../lib/search.rb"


RSpec.describe 'Server Service' do
	
	include Rack::Test::Methods

	before :each do
		@search = "inception"
   		@my_search = Search.new(@search)
  	end

	def app
		Sinatra::Application
	end

	it "Checks for correct title" do
		expect( @my_search.title ).to eq("Inception (2010)")
	end

	it "Checks for correct rating" do
		expect( @my_search.rating ).to eq(8.8)
	end

	it "Checks for how many movies" do
		expect( @my_search.how_many ).to eq(9)
	end

end