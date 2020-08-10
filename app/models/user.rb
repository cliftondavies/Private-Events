class User < ApplicationRecord
  has_many :events, foreign_key: :creator_id, inverse_of: :creator
  has_many :rsvps, foreign_key: :attendee_id, inverse_of: :attendee
  has_many :attended_events, through: :rsvps
  validates :username, presence: true, length: { in: 4..15 }, uniqueness: true

  def upcoming_events
    attended_events.where('event_date >= ?', Date.today).order(:event_date)
  end

  def previous_events
    attended_events.where('event_date < ?', Date.today).order(:event_date)
  end
end
