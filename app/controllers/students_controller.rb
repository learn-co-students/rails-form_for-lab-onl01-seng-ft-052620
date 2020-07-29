class StudentsController < ApplicationController
  include StudentsHelper

  def new
    @student = Student.new
  end

  def show
    @student = current_student
  end

  def edit
    @student = current_student
  end

  def create
    @student = Student.create!(allowed_params)
    redirect_to student_path(@student) 
  end

  def update
    @student = Student.create!(allowed_params)
    redirect_to student_path(@student) 
  end
end
