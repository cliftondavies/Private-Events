class Rsvp < ApplicationRecord
  belongs_to :attendee, class_name: 'User'
  belongs_to :attended_event, class_name: 'Event'
  validates :attendee, :attended_event, presence: true
end
