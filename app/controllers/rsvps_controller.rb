class RsvpsController < ApplicationController
  before_action :authorise

  def create
    @rsvp = current_user.rsvps.build
    @rsvp.attended_event_id = params[:event_id]
    if @rsvp.save
      redirect_to @rsvp.attended_event, notice: 'Thanks for your RSVP to this event!'
    else
      flash.now[:alert] = 'Error confirming your RSVP. Please try again.'
      render 'events/show'
    end
  end

  private

  def authorise
    redirect_to new_session_path, alert: 'You must be signed in to RSVP to an event.' unless signed_in?
  end
end
