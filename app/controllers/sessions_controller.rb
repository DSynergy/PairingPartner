class SessionsController < ApplicationController
  skip_before_action :user_logged_in_check

  def create
    @user = User.find_or_create_from_auth(request.env['omniauth.auth'])

    if new_user?
      session[:user_id] = @user.id
      redirect_to edit_user_path(@user.id)
      flash[:notice] = "Welcome friend-o. Just a little more information before we proceed, if you will."
    elsif @user
      session[:user_id] = @user.id
      redirect_to user_path(@user.id)
      flash[:alert] = "You are signed in with Github"
    else
      redirect_to root_path
      flash[:error] = "Something strange happened. Please try again?"
    end
  end

  def destroy
    session.clear
    flash[:notice] = "You have been logged out. Bye boo"
    redirect_to root_path
  end

  private

  def new_user?
    @user && @user.description == nil
  end

end
