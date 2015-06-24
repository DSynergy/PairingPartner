class MatchesController < ApplicationController

  def hot
    @match = current_user.matches.new(matchee_id: params[:matchee_id])
    if @match.save
      if @match.status == "pending"
        @match.status = "matched"
        flash[:success] = "WE HAVE A WINNER: YOU HAVE A NEW MATCH!"
        redirect_to user_path(current_user.id)
      elsif @match.status == "potential"
        @match.status = "pending"
        flash[:notice] = "Duly noted friend-o"
        redirect_to match_path(current_user.id)
      else
        flash[:error] = "Unable to match-up for existential reasons"
        redirect_to match_path(current_user.id)
      end
    else
      flash[:error] = "Unable to save. Try again champion"
      redirect_to match_path(current_user.id)
    end
  end

  def not
    @match = current_user.matches.new(matchee_id: params[:matchee_id])
    if @match.save
      flash[:alert] = "Duly noted friend-o. They won't be bothering you again, I promise"
      @match.status = "rejected"
      redirect_to match_path(current_user.id)
    else
      flash[:error] = "Unable to match-up for existential reasons"
      redirect_to match_path(current_user.id)
    end
  end

  def show
    @match = Match.new_matches(current_user).first.matchee
  end

end
