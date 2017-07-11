class SatPracticesController < ApplicationController

  def create
    @score = SatPractice.new(score_params)
    if @score.save
      redirect_to user_path(current_user)
    end
  end

  private

  def score_params
    params.require(:sat_practice).permit(:math, :english, :date, :user_id)
  end

end
