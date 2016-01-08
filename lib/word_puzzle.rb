class String
  vowels = ["a", "e", "i", "o", "u"]

  define_method(:make_puzzle) do
    puzzle_letters = []
    letters = split("")

    letters.each() do |letter|
      if vowels.include?(letter.downcase())
        puzzle_letters.push("-")
      else
        puzzle_letters.push(letter)
      end
    end

    return puzzle_letters.join()
  end

  define_method(:guess_correct?) do |original|
    self == original
  end
end
