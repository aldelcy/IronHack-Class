require_relative "../lib/todolist.rb"
require_relative "../lib/tasks.rb"

RSpec.describe "To Do test" do
let(:task1) {Task.new("Buy the dog", Time.new(2016, 4, 4, 5, 02, 00))}
let(:task2) {Task.new("Walk the Milk", Time.new(2016, 4, 4, 5, 02, 10))}
let(:task3) {Task.new("Punch the tree", Time.new(2016, 4, 4, 5, 02, 20))}
let(:todo_list) {TodoList.new}
let(:filled_list) do
	todo_list.add_task(task1)
	todo_list.add_task(task2)
	todo_list.add_task(task3)
	todo_list
end
	
	it "should return a task array" do 
		expect( todo_list.add_task(task1) ).to eq([task1])
		expect( todo_list.add_task(task2) ).to eq([task1, task2])
		expect( todo_list.add_task(task3) ).to eq([task1, task2, task3])
	end

	it "should return one less array" do 
		expect( filled_list.delete_task(task2.id) ).to eq([task1, task3])
	end

	it "should return one less array" do 
		expect( filled_list.find_task_by_id(task1.id) ).to eq(task1)
		expect( filled_list.find_task_by_id(23) ).to eq(nil)
	end

end