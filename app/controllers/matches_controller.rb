class MatchesController < ApplicationController

  def hot
    @match = current_user.matches.new(matchee_id: params[:matchee_id])
    if @match.save
      if @match.status = "pending"
        @match.status = "matched"
        flash[:success] = "WE HAVE A WINNER"
        redirect_to user_path(current_user.id)
      elsif @match.status = "potential"
        @match.status = "pending"
        flash[:event] = "Duly noted friend-o"
        redirect_to matches_path
      else
        flash[:error] = "Unable to match-up for existential reasons"
        redirect_to matches_path
      end
    else
      flash[:error] = "Unable to save. Try again champion"
      redirect_to matches_path
    end
  end

  def not
    @match = current_user.matches.new(matchee_id: params[:matchee_id])
    if @match.save
      flash[:notice] = "Duly noted friend-o"
      @match.status = "rejected"
      redirect_to matches_path
    else
      flash[:error] = "Unable to match-up for existential reasons"
      redirect_to matches_path
    end
  end

  def show
    @match = Match.new_matches(current_user).first
  end

end
