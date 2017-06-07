require 'rails_helper'
require 'spec_helper'
feature 'authentication' do
  before do
    @user = create(:user)
  end
  feature "user sign-in" do
    scenario 'visits sign-in page' do
      visit '/sessions/new'
      expect(page).to have_field('Email')
      expect(page).to have_field('Password')
    end
  end
    scenario 'logs in user if email/password combination is valid' do
        visit '/sessions/new' unless current_path == "/sessions/new"
        fill_in 'Email', with: 'amieh456@gmail.com'
        fill_in 'Password', with: 'password'
        click_button 'Log In'
        expect(current_path).to eq("/users/#{@user.id}")
        expect(page).to have_text(@user.name)
    end
    scenario 'does not sign in user if email is not found' do
        visit '/sessions/new' unless current_path == "/sessions/new"
        fill_in 'Email', with: 'wrongemail'
        fill_in 'Password', with: 'password'
        click_button 'Log In'
        expect(current_path).to eq("/sessions/new")
        expect(page).to have_text('Invalid Combination')
    end
    scenario 'does not sign in user if email/password combination is invalid' do
        visit '/sessions/new' unless current_path == "/sessions/new"
        fill_in 'Email', with: 'amieh456@gmail.com'
        fill_in 'Password', with: 'wrongpassword'
        click_button 'Log In'
        expect(current_path).to eq("/sessions/new")
        expect(page).to have_text('Invalid Combination')
    end
  end
  feature "user to log out" do
    scenario 'displays "Log Out" button when user is logged on' do
        @user = create(:user)
        visit '/sessions/new' unless current_path == "/sessions/new"
        fill_in 'Email', with: 'amieh456@gmail.com'
        fill_in 'Password', with: 'password'
        click_button 'Log In'
        expect(page).to have_button('Log Out')
    end
    scenario 'logs out user and redirects to login page' do
        @user = create(:user)
        visit '/sessions/new' unless current_path == "/sessions/new"
        fill_in 'Email', with: 'amieh456@gmail.com'
        fill_in 'Password', with: 'password'
        click_button 'Log In'
        click_button 'Log Out'
        expect(current_path).to eq('/sessions/new')
    end
end
