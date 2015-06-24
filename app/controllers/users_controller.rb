class UsersController < ApplicationController

  def show
    redirect_to user_show(current_user)
  end

  def edit
    @user = current_user
    @languages = Language.all
  end

  def update
    current_user.update(user_params)
    update_user_languages
    redirect_to users_path(current_user)
  end

  private

  def user_params
    params.require(:user).permit(:description)
  end

  def update_user_languages
    UserLanguage.where(user_id: current_user.id).delete_all
    @language_params.each do |id|
      UserLanguage.create(user_id: current_user.id, language_id: id)
    end
  end

  def language_params
    @language_params = params[:user][:languages].shift
  end

end
