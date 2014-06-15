require 'rails_helper'

feature 'Site Pages' do
  describe 'Home Page' do
    it 'has the right content' do
      visit root_path
      expect(page).to have_content 'Good Trades'
    end
  end
end