require 'rails_helper'
feature "User creates a message" do
  before(:each) do
    visit "/users/new"
  end
  scenario "successfully creates message" do
      fill_in "content", with: "Hello here is a message"
      expect(page).to have_current_path("/users/new")
      expect(page).to have_content "Hello here is a message"
  end
end
