require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the puzzle encryption path', {:type => :feature}) do
  it('processes the user entry and returns the proper encrypted puzzle') do
    visit('/')
    fill_in('user_string',
      :with => "Believe you can and you're halfway there. Theodore Roosevelt")
    click_button('Generate Puzzle')
    expect(page)
      .to(have_content("B-l--v- y-- c-n -nd y--'r- h-lfw-y th-r-. Th--d-r- R--s-v-lt"))
  end
end

describe('the puzzle decription path', {:type => :feature}) do
  it('processes the user entry and tells them if their guess is correct') do
    visit('/')
    fill_in('user_string', :with => "Hey there!")
    click_button('Generate Puzzle')
    fill_in('user_guess', :with => "hey there!")
    click_button('Am I right?')
    expect(page).to(have_content('You are correct!'))
  end
end
