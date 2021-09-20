require 'rails_helper'
require 'web_helper'

feature 'posts feed' do
  scenario 'logged in user can see posts feed' do
    sign_up_user
    # add test posts, click posts feed, check they both show.
  end
end