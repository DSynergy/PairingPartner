class SessionsController < ApplicationController

  def create
    user = User.find_or_create_from_auth(requestenv['omniauth.auth'])

    if user
      session[:user_id] = user.id
      redirect_to user_path(user.id)
      flash[:notice] = "You are signed in with Github"
    else
      redirect_to root_path
      flash[:alert] = "Something strange happened. Please try again?"
    end
  end

  def destroy
    session.clear
    flash[:notice] = "You have been logged out. Bye boo"
    redirect_to root_path
  end

end
