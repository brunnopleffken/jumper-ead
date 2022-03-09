class Admin::LessonsController < ApplicationController
  def index
    @lessons = Lesson.order(:id)
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def update
    lesson = Lesson.find(params[:id])
    lesson.update!(params.require(:lesson).permit!)
    redirect_to admin_lessons_url and return
  end
end
