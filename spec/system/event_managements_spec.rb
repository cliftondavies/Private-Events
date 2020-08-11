require 'rails_helper'

RSpec.describe 'EventManagement', type: :system do
  before { driven_by(:rack_test) }
  let(:user) { create(:user) }

  describe 'Create Event' do
    context 'when signed in' do
      before do
        visit new_session_path
        fill_in 'Username', with: user.username
        click_button 'Log in'
      end

      scenario 'creates a new event' do
        visit new_event_path
        fill_in 'Description', with: 'Test Event'
        click_button 'Create Event'
        expect(page).to have_content 'Your Event was successfully created!'
      end
    end

    context 'when signed out' do
      scenario 'cannot create a new event' do
        visit new_event_path
        expect(page).to have_content 'You must be signed in to view this page.'
      end
    end
  end
end
