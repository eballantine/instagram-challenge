require 'rails_helper'
require 'web_helper'

feature 'user post' do
  scenario 'logged in user can click to add post' do
    sign_up_user
    click_link 'Add Post'
    expect(page).to have_current_path('/posts/new')
    expect(page).to have_content('New Post')
  end

  scenario 'logged in user can add a description and select a file' do
    sign_up_user
    click_link 'Add Post'
    expect(page).to have_content('Description')
    expect(page).to have_content('Image')
  end

  scenario 'logged in user can create a post MANUAL TEST'
end
