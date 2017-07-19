class SatScoresController < ApplicationController

  def create
    @score = SatScore.new(score_params)
    if @score.save
      redirect_to user_path(current_user)
    end
  end

  private

  def score_params
    params.require(:sat_score).permit(:math, :english, :date, :user_id)
  end

end
