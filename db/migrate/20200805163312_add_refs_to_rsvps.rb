class AddRefsToRsvps < ActiveRecord::Migration[5.2]
  def change
    add_reference :rsvps, :attendee, foreign_key: true
    add_reference :rsvps, :attended_event, foreign_key: true
  end
end
