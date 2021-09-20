require 'rails_helper'

feature 'user sign up' do
  scenario 'home page has link to sign up' do
    visit '/'
    expect(page).to have_link('Sign Up')
  end

  scenario 'sign up link from homepage takes user to sign up form' do
    visit '/'
    click_on 'Sign Up'
    expect(page).to have_content('Email')
    expect(page).to have_content('Password')
  end

  scenario 'user can enter details to sign up' do
    visit '/'
    click_on 'Sign Up'
    fill_in 'Email', with: 'cecil3@gmail.com'
    fill_in 'user_password', with: 'P@ssword!'
    fill_in 'user_password_confirmation', with: 'P@ssword!'
    click_button 'Sign up'
    expect(page).to have_content('Welcome! You have signed up successfully.')
  end
end
