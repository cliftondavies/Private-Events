require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Associations' do
    it { is_expected.to have_many(:events).with_foreign_key(:creator_id).inverse_of(:creator) }
    it { is_expected.to have_many(:rsvps).with_foreign_key(:attendee_id).inverse_of(:attendee) }
    it { is_expected.to have_many(:attended_events).through(:rsvps) }
  end

  context 'Validations' do
    it { is_expected.to validate_presence_of(:username) }
    it { is_expected.to validate_length_of(:username).is_at_least(4).is_at_most(15) }
    it { is_expected.to validate_uniqueness_of(:username) }
  end
end
