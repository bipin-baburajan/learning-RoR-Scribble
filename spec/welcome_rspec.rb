require 'rails_helper'

RSpec.describe 'Welcome content', type: :system do
  it 'shows the Welcome text' do
    visit about_path
    expect(page).to have_content('Welcome to the about page')
  end

  scenario 'Test empty signup' do
    visit signup_path
    click_button 'Sign up'

    # The page should show error message 'Title can't be blank'
    # 'page' is a special variable from capybara, which contain information of the current displayed page
    expect(page).to have_content("Username can't be blank")
    expect(page).to have_content("Username is too short (minimum is 3 characters)")
    expect(page).to have_content("Email can't be blank")
    expect(page).to have_content("Email is invalid")
    expect(page).to have_content("Password can't be blank")

    # No User record is created
    expect(User.count).to eq(0)
  end

  scenario 'Test valid signup' do
    visit signup_path


    # 'page' is a special variable from capybara, which contain information of the current displayed page
    fill_in 'user_username', with: 'RubyYagi'
    fill_in 'user_email', with: 'RubyYagi@gmail.com'
    fill_in 'user_password', with: 'RubyYagi'
    click_button 'Sign up'
    expect(page).to have_content("Welcome to the Scribble ")

    # No User record is created
    expect(User.count).to eq(1)
  end

  scenario 'Test valid signup' do
    visit signup_path


    # 'page' is a special variable from capybara, which contain information of the current displayed page
    fill_in 'user_username', with: 'RubyYagi'
    fill_in 'user_email', with: 'RubyYagi@gmail.com'
    fill_in 'user_password', with: 'RubyYagi'
    click_button 'Sign up'
    expect(page).to have_content("Welcome to the Scribble ")

    # No User record is created
    expect(User.count).to eq(1)
  end
end