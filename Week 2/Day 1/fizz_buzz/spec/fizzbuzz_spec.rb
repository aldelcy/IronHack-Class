require_relative "../lib/fizzbuzz.rb"

RSpec.describe "FIZZ BUZZ Checker" do
	let(:input)  {FizzBuzz.new}

	it "returns Fizz if multiple of 3" do
		expect( input.change_input(21) ).to eq("Fizz")
	end
	it "returns Buzz if multiple of 5" do
		expect( input.change_input(50) ).to eq("Buzz")
	end
	it "returns FizzBuzz if multiple of 3 and 5" do
		expect( input.change_input(15) ).to eq("FizzBuzz")
	end
end