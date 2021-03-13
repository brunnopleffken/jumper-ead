class StudentsController < ApplicationController
  def index
    @students = Student.includes(:classroom).order(:name)
  end
end
