require ('rspec')
require('word')
require('definition')

describe(Word) do
  before() do
    Word.clear()
  end

  describe(".all") do
    it("is empty at first") do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#new_word') do
    it("returns the word that has been entered") do
      test_word = Word.new("Sarlacc")
      expect(test_word.new_word()).to(eq("Sarlacc"))
    end
  end


  describe('#save') do
    ("returns a word from the array of saved words") do
      test_word = Word.new("Sarlacc")
      test_word.save()
      expect(Word.all())to(eq([]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved words") do
      Word.new("Sarlacc")
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end







end
