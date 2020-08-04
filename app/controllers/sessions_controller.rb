class SessionsController < ApplicationController
  def new; end

  def create
    if (user = User.find_by(username: params[:username]))
      session[:user_id] = user.id
      redirect_to user_path(user), notice: 'Sign in successful!'
    else
      flash.now[:alert] = 'Incorrect username, please try again.'
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    # @_current_user = nil
    redirect_to new_session_path, notice: 'Sign out successful!'
  end
end
