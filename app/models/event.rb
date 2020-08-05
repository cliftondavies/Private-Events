class Event < ApplicationRecord
  has_many :rsvps, foreign_key: :attended_event_id
  has_many :attendees, through: :rsvps
  belongs_to :creator, class_name: 'User'

  def self.upcoming
    where('event_date >= ?', Date.today).order(:event_date)
  end

  def self.past
    where('event_date < ?', Date.today).order(:event_date)
  end
end
