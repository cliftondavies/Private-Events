require 'rails_helper'

RSpec.describe Rsvp, type: :model do
  describe 'Associations' do
    it { is_expected.to belong_to(:attendee).class_name('User') }
    it { is_expected.to belong_to(:attended_event).class_name('Event') }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of(:attendee) }
    it { is_expected.to validate_presence_of(:attended_event) }
  end
end
