class Event < ApplicationRecord
  has_many :rsvps, foreign_key: :attended_event_id
  has_many :attendees, through: :rsvps
  belongs_to :creator, class_name: 'User'
end
