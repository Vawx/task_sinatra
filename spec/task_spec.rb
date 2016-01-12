require('rspec')
require('task')
require('pry')

describe(Task) do
  before() do
    Task.clear
  end

  describe(".all") do
    it("is empty at first") do
      expect(Task.all).to(eq([]))
    end
  end
  describe(".clear") do
    it("empties out all of the saved tasks") do
      Task.new("Wash the lion", 15).save
      Task.clear
      expect(Task.all).to(eq([]))
    end
  end
  describe("#description") do
    it("lets give it a description") do
      test_task = Task.new("scrub the zebra", 20)
      expect(test_task.description).to(eq("scrub the zebra"))
    end
  end
  describe("#save") do
    it("adds a task to the array of saved tasks") do
      test_task = Task.new("wash the lion", 15)
      test_task.save()
      expect(Task.all).to(eq([test_task]))
    end
  end
end
