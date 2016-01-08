class String
  vowels = ["a", "e", "i", "o", "u"]

  define_method(:make_puzzle) do
    puzzle_letters = []
    letters = self.split("")

    letters.each() do |character|
      if vowels.include?(character)
        puzzle_letters.push("-")
      else
        puzzle_letters.push(character)
      end
    end

    return puzzle_letters.join()
  end
end
