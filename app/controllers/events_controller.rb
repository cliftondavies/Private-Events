class EventsController < ApplicationController
  before_action :set_event, only: %i[show edit update destroy]
  before_action :authorise, except: %i[index show]

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = current_user.events.build
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      redirect_to @event, notice: 'Your Event was successfully created!'
    else
      flash.now[:alert] = 'Error creating your event. Please try again.'
      render :new
    end
  end

  private

  def authorise
    redirect_to new_session_path, alert: 'You must be signed in to view this page.' unless signed_in?
  end

  def event_params
    params.require(:event).permit(:description, :event_date, :location)
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_event
    @event = Event.find(params[:id])
  end
end
