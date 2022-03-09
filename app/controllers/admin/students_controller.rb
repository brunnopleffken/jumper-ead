class Admin::StudentsController < ApplicationController
  def index
    @student = Student.new
    @students = Student.includes(:classroom)
      .order(:name)
  end

  def create  
    Student.create!(student_params)
    redirect_to admin_students_url and return
  end

  private

  def student_params
    params.require(:student).permit!
  end
end
