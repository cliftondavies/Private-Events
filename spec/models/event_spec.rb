require 'rails_helper'

RSpec.describe Event, type: :model do
  context 'Associations' do
    it { is_expected.to have_many(:rsvps).with_foreign_key(:attended_event_id).inverse_of(:attended_event) }
    it { is_expected.to have_many(:attendees).through(:rsvps) }
    it { is_expected.to belong_to(:creator).class_name('User') }
  end

  context 'Validations' do
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:creator) }
  end
end
