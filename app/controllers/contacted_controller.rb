class ContactedController < ApplicationController

  def create
    contacted = Contacted.new(contacted_params)
    if contacted.save
      redirect_to admin_dashboard_index_path
    end
  end


  private

  def contacted_params
    params.require(:contacted).permit(:notes, :user_id)
  end
end
