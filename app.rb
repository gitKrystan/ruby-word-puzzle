require('sinatra')
require('sinatra/reloader')
require('./lib/word_puzzle')
also_reload('./lib/**/*.rb')

get('/') do
  erb(:index)
end

post('/puzzle') do
  @encrypted_puzzle = params.fetch('user_string').make_puzzle()
  erb(:puzzle)
end
