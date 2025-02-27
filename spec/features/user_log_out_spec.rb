require 'rails_helper'
require 'web_helper'

feature 'user log out' do
  scenario 'once user is logged in, homepage shows option to log out' do
    sign_up_user
    expect(page).to have_link('Log Out')
  end

  scenario 'user can log out' do
    sign_up_user
    click_link 'Log Out'
    expect(page).to have_content('Signed out successfully.')
  end
end
