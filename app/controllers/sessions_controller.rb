class SessionsController < ApplicationController
  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path(current_user)
    else
      redirect_to root_path
    end
  end

  def destroy
    session.destroy
    redirect_to root_path
  end
end
