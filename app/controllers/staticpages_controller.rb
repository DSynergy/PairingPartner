class StaticpagesController < ApplicationController
  skip_before_action :user_logged_in_check

  def home
  end

  def description
  end

end
