class ActivitiesController < ApplicationController
  def create
    begin
      @student = Student.find(params[:student_id])

      @student.activities.create!(activity_params) do |parameter|
        parameter.lesson_id = params[:lesson_id]
      end
    rescue Exception => e
      render plain: YAML::dump(e) and return
    end

    redirect_to student_lessons_url(@student) and return
  end

  private

  def activity_params
    params.require(:activity).permit(:document)
  end
end
