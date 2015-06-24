class UsersController < ApplicationController

  def show
  end

  def edit
    @user = current_user
  end

  def update
    current_user.update(user_params)
    update_user_languages
    redirect_to user_path(current_user)
  end

  private

  def user_params
    params.require(:user).permit(:description)
  end

  def update_user_languages
    UserLanguage.where(user_id: current_user.id).delete_all
    parsed_language_params = params.select { |key, value| key.to_s.match(/^language-/) }.values
    parsed_language_params.each do |id|
      UserLanguage.create(user_id: current_user.id, language_id: id)
    end
  end

end
