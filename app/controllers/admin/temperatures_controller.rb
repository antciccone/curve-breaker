class Admin::TemperaturesController < ApplicationController

  def create
    temp = Temperature.new(temp_params)
    if temp.save
      redirect_to admin_dashboard_index_path
    end
  end

  private

  def temp_params
    params.require(:temperature).permit(:temp, :user_id)
  end


end
