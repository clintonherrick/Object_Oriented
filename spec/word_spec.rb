require ('rspec')
require('word')
require('definition')

describe(Word) do
  before() do
    Word.clear()
  end

  describe('#word') do
    it("returns the word that has been entered") do
      test_word = Word.new("Sarlacc")
      expect(test_word.word()).to(eq("Sarlacc"))
    end
  end

  describe('#id') do
    it("returns the id of the new word") do
      test_word = Word.new("Sarlacc")
      expect(test_word.id()).to(eq(1))
    end
  end

  describe('#dictionary') do
    it('returns and an empty array from the dictionary') do
      test_word = Word.new("Sarlacc")
      expect(test_word.dictionary()).to(eq([]))
    end
  end


  describe(".all") do
    it("is empty at first") do
      expect(Word.all()).to(eq([]))
    end
  end


  describe('#save') do
    it ("returns a word from the array of saved words") do
      test_word = Word.new("Sarlacc")
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
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
