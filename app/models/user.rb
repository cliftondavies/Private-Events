class User < ApplicationRecord
  has_many :events, foreign_key: :creator_id
  has_many :rsvps, foreign_key: :attendee_id
  has_many :attended_events, through: :rsvps

  def upcoming_events
    attended_events.where('event_date >= ?', Date.today).order(:event_date)
  end

  def previous_events
    attended_events.where('event_date < ?', Date.today).order(:event_date)
  end
end
