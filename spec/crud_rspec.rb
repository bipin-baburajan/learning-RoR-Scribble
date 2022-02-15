require 'rails_helper'

RSpec.describe 'Welcome content', type: :system do
  let!(:user) { User.create(url: 'http://127.0.0.1:3000/signup', user_username: 'RubyYagi', user_email: 'hai@gmai.cm', user_password: 'lknmal')}

  it 'shows the Welcome text' do
    visit about_path
    expect(page).to have_content('Welcome to the about page')
  end

end