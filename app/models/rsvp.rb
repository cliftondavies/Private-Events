class Rsvp < ApplicationRecord
  belongs_to :attendee
  belongs_to :attended_event
end
