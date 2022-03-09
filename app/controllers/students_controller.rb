class StudentsController < ApplicationController
  def index
    @students = Student.includes(:classroom)
      .where(is_enabled: true)
      .order(:name)
  end
end
