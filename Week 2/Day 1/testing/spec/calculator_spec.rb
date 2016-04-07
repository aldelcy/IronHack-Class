require_relative "../lib/calculator.rb"

RSpec.describe "String Calculator" do
	let(:calculator)  {StringCalculator.new}

	it "returns the number when given one number" do
		expect( calculator.add("7") ).to eq(7)
		expect( calculator.add("5") ).to eq(5)
	end

	it "returns the sum when given multiple values" do
		expect( calculator.add("7,6,2,3") ).to eq(18)
		expect( calculator.add("7,2") ).to eq(9)
	end

	it "returns 0 given empty string or ONLY non-numeric value" do
		expect( calculator.add("") ).to eq(0)
		expect( calculator.add("#") ).to eq(0)
	end

	it "returns sum of numbers when given non-numeric values" do
		expect( calculator.add("7#5") ).to eq(12)
	end
end