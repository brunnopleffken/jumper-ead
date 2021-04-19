class LessonsController < ApplicationController
  def index
    @student = Student.find(params[:student_id])
    @lessons = Lesson.includes(:activity).order(:id)
  end

  def show
    @student = Student.find(params[:student_id])
    @lesson = Lesson.find(params[:id])
  end

  def create
    @student = Student.find(params[:student_id])
    lessons = params[:lesson]

    if params[:commit].downcase == 'falta'
      lessons.each do |l|
        @student.activities.create!({ lesson_id: l.to_i, lesson_type: 1 })
      end

      redirect_to student_lessons_url(@student) and return
    else
      lessons.each do |l|
        @student.activities.create!({ lesson_id: l.to_i, lesson_type: 0 })
      end

      redirect_to student_lessons_url(@student) and return
    end
  end
end
