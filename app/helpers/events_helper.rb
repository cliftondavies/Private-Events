module EventsHelper
  def rsvp_status(event)
    if signed_in? && current_user.rsvps.find_by(attended_event: event)
      '<span>Attendance Confirmed</span>'.html_safe
    else
      render 'rsvps/form'
    end
  end
end
