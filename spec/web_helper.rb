def sign_up_user
  visit '/'
  click_on 'Sign Up'
  fill_in 'Email', with: 'cecil3@gmail.com'
  fill_in 'user_password', with: 'P@ssword!'
  fill_in 'user_password_confirmation', with: 'P@ssword!'
  click_on 'Sign up'
end

def visit_new_post
  sign_up_user
    page.find('#add-post-button')
    within '#add-post-button' do
      click_link
    end
end
