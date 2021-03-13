class LessonsController < ApplicationController
  def index
    @student = Student.find(params[:student_id])
    @lessons = Lesson.includes(:activities)
  end

  def show
    @student = Student.find(params[:student_id])
    @lesson = Lesson.find(params[:id])
  end
end
