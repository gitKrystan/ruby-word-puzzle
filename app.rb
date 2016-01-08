require('sinatra')
require('sinatra/reloader')
require('./lib/word_puzzle')
also_reload('./lib/**/*.rb')

get('/') do
  erb(:index)
end

post('/puzzle') do
  @original = params.fetch('user_string')
  @encrypted_puzzle = @original.make_puzzle()
  erb(:puzzle)
end

post('/solution') do
  @guess = params.fetch('user_guess')
  @original = params.fetch('original')

  if @guess.guess_correct?(@original)
    @guess_result = "You are correct!"
    @result_icon = '<span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>'
  else
    @guess_result = "Sorry, wrong answer!"
    @result_icon = '<span class="glyphicon glyphicon-thumbs-down" aria-hidden="true"></span>'
  end

  erb(:solution)
end
