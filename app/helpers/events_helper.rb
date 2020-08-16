module EventsHelper
  def rsvp_status(event)
    if signed_in? && (event.creator == current_user || current_user.rsvps.find_by(attended_event: event))
      '<span><strong>You have RSVPed to this event!</strong></span>'.html_safe
    else
      render 'rsvps/form'
    end
  end
end
