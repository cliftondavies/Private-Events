class SessionsController < ApplicationController
  def new; end

  def create
    if (user = User.find_by(username: params[:username]))
      session[:user_id] = user.id
      redirect_to root_path, notice: 'Sign in successful!'
    else
      flash.now[:error] = 'Incorrect username, please try again.'
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    # @_current_user = nil
    redirect_to session_path, notice: 'Sign out successful!'
  end
end