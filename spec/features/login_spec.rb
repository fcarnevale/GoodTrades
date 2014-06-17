require 'rails_helper'

feature 'Login' do
  it 'logs users into the site' do
    user = FactoryGirl.create(:user)

    visit new_user_session_path

    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_on 'Sign in'

    expect(page).to have_content 'Signed in successfully.'
  end
end