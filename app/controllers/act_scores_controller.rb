class ActScoresController < ApplicationController

  def create
    @score = ActScore.new(score_params)
    if @score.save
      redirect_to user_path(current_user)
    end
  end

  private

  def score_params
    params.require(:act_score).permit(:math, :english, :science, :reading, :date, :user_id)
  end

end
