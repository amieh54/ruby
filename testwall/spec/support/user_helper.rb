require "rails_helper"
module CapybaraHelpers
  def register_user(username: 'amieh54')
    visit 'users/:id' unless current_path == 'users/:id'
    fill_in "username", with: username
    click_button "Sign In"
  end
end
