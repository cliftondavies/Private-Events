class RemoveReferencesFromRsvps < ActiveRecord::Migration[5.2]
  def change
    remove_reference :rsvps, :attendee, foreign_key: true
    remove_reference :rsvps, :attended_event, foreign_key: true
  end
end
