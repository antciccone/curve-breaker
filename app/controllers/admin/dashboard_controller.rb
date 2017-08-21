class Admin::DashboardController < ApplicationController

  def index
    @user = User.all.joins(:roles).where(roles: {name: 'student'})
    @current = User.all.where(status: "current")
    @past = User.all.where(status: "past")
    @lead = User.all.where(status: "lead")
  end
end
