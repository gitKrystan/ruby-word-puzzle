require('rspec')
require('word_puzzle')
require('pry')

describe('String#make_puzzle') do
  it('returns the same string for a word with no vowels') do
    expect('myrrh'.make_puzzle()).to(eq('myrrh'))
  end

  it('returns a dash for a single vowel') do
    expect('a'.make_puzzle()).to(eq('-'))
  end

  it('returns a new string with dashes replacing vowels in a single word') do
    expect('frankincense'.make_puzzle()).to(eq('fr-nk-nc-ns-'))
  end

  it('returns a new string with dashes replacing vowels in multiple words') do
    expect('hello world'.make_puzzle()).to(eq('h-ll- w-rld'))
  end
end
