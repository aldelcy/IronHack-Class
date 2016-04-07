# require_relative "../lib/tasks.rb"

# RSpec.describe "Tasks test" do
# let(:task) {Task.new("Buy the dog", Time.new(2016, 4, 4, 5, 02, 00))}
# let(:task2) {Task.new("Walk the Milk", Time.new(2016, 4, 4, 5, 02, 10))}
	
# 	it "should return false" do 
# 		expect( task.completed? ).to eq(false)
# 	end

# 	it "should return true" do 
# 		expect( task.complete! ).to eq(true)
# 	end

# 	it "should return false" do 
# 		expect( task.make_incomplete! ).to eq(false)
# 	end

# 	it "should change task content" do 
# 		expect( task.content!("Walk the dog") ).to eq("Walk the dog")
# 	end

# end