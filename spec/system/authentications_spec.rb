require 'rails_helper'

RSpec.describe 'Authentication', type: :system do
  before { driven_by(:rack_test) }
  let(:user) { create(:user) }

  describe 'Sign Up' do
    before(:each) { visit new_user_path }

    context 'with username available' do
      scenario 'creates a new user account' do
        fill_in 'Username', with: 'testuserone'
        click_button 'Create Account'
        expect(page).to have_content 'Your account was successfully created!'
      end
    end

    context 'with username unavailable' do
      scenario 'does not create a new user account' do
        fill_in 'Username', with: user.username
        click_button 'Create Account'
        expect(page).to have_content 'We could not create your account. Please try again.'
      end
    end
  end

  describe 'Sign In' do
    before(:each) { visit new_session_path }

    context 'with valid username' do
      scenario 'authenticates the user' do
        fill_in 'Username', with: user.username
        click_button 'Log in'
        expect(page).to have_content 'Sign in successful!'
      end
    end

    context 'with invalid username' do
      scenario 'does not authenticate the user' do
        fill_in 'Username', with: 'testusertwo'
        click_button 'Log in'
        expect(page).to have_content 'Incorrect username, please try again.'
      end
    end
  end
end
