require 'rails_helper'
require 'web_helper'

feature 'user profile' do
  scenario 'logged in user can see link to their profile in nav bar' do
    sign_up_user
    expect(page).to have_css 'li.profile'
  end
end
