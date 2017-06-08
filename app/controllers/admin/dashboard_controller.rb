class Admin::DashboardController < ApplicationController

  def index
    @user = User.all
  end
end
