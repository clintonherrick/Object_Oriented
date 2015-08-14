require('rspec')
require('definition')

describe(Definition) do
  before() do
    Definition.clear()
  end

  describe(".all") do
    it("is empty at first") do
      expect(Definition.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("returns a definition to the array of saved words") do
      test_task = Definition.new("a semi-sentient, plant-like, omnivorous creature found on several planets across the galaxy. Not much was known about this creature.")
      test_task.save()
      expect(Definition.all()).to(eq([test_task]))
    end
  end


  describe(".clear") do
    it("empties out all of the saved definitions") do
      Definition.new("a semi-sentient, plant-like, omnivorous creature found on several planets across the galaxy. Not much was known about this creature.").save()
      Definition.clear()
      expect(Definition.all()).to(eq([]))
    end
  end

  describe('#definition') do
    it("returns the saved definition that has been entered") do
      test_task = Definition.new("a semi-sentient, plant-like, omnivorous creature found on several planets across the galaxy. Not much was known about this creature.")
      expect(test_task.definition()).to(eq("a semi-sentient, plant-like, omnivorous creature found on several planets across the galaxy. Not much was known about this creature."))
    end
  end

  describe('#id') do
    it("returns the id of the new word") do
      test_task = Definition.new("a semi-sentient, plant-like, omnivorous creature found on several planets across the galaxy. Not much was known about this creature.")
      expect(test_task.id()).to(eq(1))
    end
  end



  describe(".find") do
    it("returns a definition by its id number") do
      test_task = Definition.new("a semi-sentient, plant-like, omnivorous creature found on several planets across the galaxy. Not much was known about this creature.")
      test_task.save()
      test_task2 = Definition.new("A bounty hunter")
      test_task2.save()
      expect(Definition.find(test_task.id())).to(eq(test_task))
    end
  end
end
