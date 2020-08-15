class RsvpsController < ApplicationController
  before_action :authorise

  def create
    @rsvp = current_user.rsvps.build(params[:attended_event_id])
    # @rsvp.attended_event_id = params[:attended_event_id]
    if @rsvp.save
      redirect_to @rsvp.attended_event, notice: 'Thanks for your RSVP to this event!'
    else
      flash.now[:alert] = 'Error confirming your RSVP. Please try again.'
      render 'events/show'
    end
    # redirect_to @rsvp.attended_event # event_path(@rsvp.attended_event)
  end

  private

  def authorise
    redirect_to new_session_path, alert: 'You must be signed in to view this page.' unless signed_in?
  end

  # def set_event
  #   @event = Event.find(params[:id])
  # end

  # def event_params
  #   params.require(:event).permit(:description, :event_date, :location)
  # end
end
