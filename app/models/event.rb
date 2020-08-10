class Event < ApplicationRecord
  has_many :rsvps, foreign_key: :attended_event_id, inverse_of: :attended_event
  has_many :attendees, through: :rsvps
  belongs_to :creator, class_name: 'User'
  validates :description, :creator, presence: true

  scope :upcoming, -> { where('event_date >= ?', Date.today).order(:event_date) }
  scope :past, -> { where('event_date < ?', Date.today).order(:event_date) }
end
