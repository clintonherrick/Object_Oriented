class Word
  @@words = []

  define_method(:initialize) do |instance|
    @word = instance
    @id = @@words.length().(1)
    @dictionary = []
  end

  define_method(:word) do
    @word
  end

  define_singleton_method(:all) do
    @@words
  end

  define_method(:save) do
    @@words.push(self)
  end

  define_singleton_method(:clear) do
    @@words = []
  end

  define_method(:dictionary) do
    @dictionary
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:find) do |identification|
    found_word = nil
    @@words.each do |word|
      if definition.id().eql?(identification.to_i())
        found_word = word
      end
    end
    found_word
  end
end
