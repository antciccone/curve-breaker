class Admin::PairingController < ApplicationController

  def index
    @teachers = Teacher.all
    @students = User.all
  end

  def create
    @teacher_student = TeacherStudent.new(user_id: User.find(params[:student]).id, teacher_id: Teacher.find(params[:teacher]).id, status: "active")
    @teacher_student.save
  end

  def current_pairings
    @teachers = Teacher.left_joins(:users).group(:id).order('COUNT(users.id) DESC')
  end

  def update
    @teacher_student = TeacherStudent.find(params[:id])
    change_status(@teacher_student)
    redirect_to admin_current_pairings_path
  end

  def destroy
    #do i want to destory the pairing. need to ask nick. Maybe retire it as a status?
    @ts = TeacherStudent.find(params[:id])
    @ts.destroy
    redirect_to admin_current_pairings_path
  end

  private

  def change_status(ts)
    if ts.status == "active"
      ts.update(status: "not-active")
    else
      ts.update(status: "active")
    end
  end
end
