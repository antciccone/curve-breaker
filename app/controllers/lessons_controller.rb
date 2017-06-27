class LessonsController < ApplicationController


  def create
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
        redirect_to admin_user_path(params[:lesson][:user_id].to_i)
    end
  end

  private

  def lesson_params
    params.require(:lesson).permit(:notes, :homework, :user_id, :teacher_id, :length)
  end
end
