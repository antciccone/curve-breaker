class Admin::StudentController < ApplicationController

  def new
  end

  def show
    @student = User.find(params["id"])
  end
end
