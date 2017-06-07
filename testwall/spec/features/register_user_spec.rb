require 'rails_helper'
feature "User creates an account" do
  scenario "successfully creates a new user account" do
    register_user
    expect(page).to have_content "Welcome amieh54!"
    expect(page).to have_current_path(users/(User.last.id))
  end
  scenario "unsuccessfully creates a new user account" do
    register_user username:''
    expect(current_path).to eq(new_user_path)
  end
  scenario "doesn't fill out first name field" do
    register_user usernames: ''
    expect(page).to have_content "First name can't be blank"
  end
end

#
# If created succesfully
# Current path should equal messages_path (messages#index) Current page should contain message you just created
#  If not created succesfully
# Current path should equal messages_path (messages#index) Current page should contain error messages (create test for each error except user reference required).
# end
