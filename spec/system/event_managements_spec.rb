require 'rails_helper'

RSpec.describe 'Event Management', type: :system do
  before { driven_by(:rack_test) }
  let(:user) { create(:user) }

  before :each do
    visit new_session_path
    fill_in 'Username', with: user.username
    click_button 'Log in'
  end

  describe 'Create Event' do
    context 'when signed in' do
      scenario 'creates a new event' do
        visit new_event_path
        fill_in 'Description', with: 'Test Event'
        fill_in 'Location', with: 'UK'
        click_button 'Create Event'
        expect(page).to have_content 'Your Event was successfully created!'
      end
    end

    context 'when signed out' do
      scenario 'cannot create a new event' do
        click_link 'Sign Out'
        visit new_event_path
        expect(page).to have_content 'You must be signed in to create an event.'
      end
    end
  end

  describe 'Attend Event' do
    let(:event) { create(:event) }

    context 'when signed in' do
      scenario 'rsvps to an event' do
        visit event_path(event)
        click_button 'Attend Event'
        expect(page).to have_content 'Thanks for your RSVP to this event!'
      end
    end

    context 'when signed out' do
      scenario 'cannot rsvp to an event' do
        click_link 'Sign Out'
        visit event_path(event)
        click_button 'Attend Event'
        expect(page).to have_content 'You must be signed in to RSVP to an event.'
      end
    end
  end
end
