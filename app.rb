require('sinatra')
require('sinatra/reloader')
require('./lib/word_puzzle')
also_reload('./lib/**/*.rb')

get('/') do
  erb(:index)
end

post('/puzzle') do
  original = params.fetch('user_string')
  @encrypted_puzzle = original.make_puzzle()
  erb(:puzzle)
end

post('/solution') do
  @guess = params.fetch('user_guess')
  @guess_result = "You are correct!"
  erb(:solution)
end
