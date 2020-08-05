class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update destroy]
  before_action :authorise, except: %i[new create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user, notice: 'Your account was successfully created!'
    else
      flash.now[:alert] = 'We could not create your account. Please try again.'
      render :new
    end
  end

  def show
    @upcoming_events = current_user.upcoming_events
    @previous_events = current_user.previous_events
  end

  private

  def authorise
    redirect_to new_session_path, alert: 'You must be signed in to view this page.' unless signed_in?
  end

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username)
  end
end
