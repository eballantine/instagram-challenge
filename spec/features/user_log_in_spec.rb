require 'rails_helper'

feature 'user log in' do
  scenario 'home page has link to log in' do
    visit '/'
    expect(page).to have_link('Log In')
  end

  scenario 'log in link from homepage takes user to log in form' do
    visit '/'
    click_on 'Log In'
    expect(page).to have_content('Email')
    expect(page).to have_content('Password')
    expect(page).to have_button('Log in')
  end

  #TO DO user can enter details and log in
end
