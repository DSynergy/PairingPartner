class SessionsController < ApplicationController
  skip_before_action :user_logged_in_check

  def create
    @user = User.find_or_create_from_auth(request.env['omniauth.auth'])

    if new_user?
      session[:user_id] = @user.id
      create_blank_matches
      redirect_to edit_user_path(@user.id)
      flash[:success] = "Welcome friend-o. Just a little more information before we proceed, if you will."
    elsif @user
      session[:user_id] = @user.id
      redirect_to user_path(@user.id)
      flash[:notice] = "You are signed in with Github"
    else
      redirect_to root_path
      flash[:error] = "Something strange happened. Please try again?"
    end
  end

  def destroy
    session.clear
    flash[:alert] = "You have been logged out. Bye boo"
    redirect_to root_path
  end

  private

  def create_blank_matches
    User.all.each do |user2|
      Match.create(user_id: @user.id, matchee_id: user2.id) unless @user.id == user2.id
    end
  end

  def new_user?
    @user && @user.description == nil || @user.languages.count == 0
  end

end
