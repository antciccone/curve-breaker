class Admin::StudentController < ApplicationController

  def new
  end

  def show
    @student = User.find(params["id"])
    @lesson  = Lesson.new
    @attachment = Attachment.new
  end
end
