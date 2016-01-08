class String
  vowels = ["a", "e", "i", "o", "u"]

  define_method(:make_puzzle) do
    if vowels.include?(self)
      return "-"
    else
      return self
    end
  end
end
