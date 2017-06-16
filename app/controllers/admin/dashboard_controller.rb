class Admin::DashboardController < ApplicationController

  def index
    @user = User.all
    @current = User.all.where(status: "current")
    @past = User.all.where(status: "past")
    @lead = User.all.where(status: "lead")
  end
end
