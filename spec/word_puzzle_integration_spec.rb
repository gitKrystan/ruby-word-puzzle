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
