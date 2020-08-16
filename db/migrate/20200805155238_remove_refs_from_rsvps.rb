class RemoveRefsFromRsvps < ActiveRecord::Migration[5.2]
  def change
    remove_column :rsvps, :attendee, :references, foreign_key: true
    remove_column :rsvps, :attended_event, :references, foreign_key: true
  end
end
