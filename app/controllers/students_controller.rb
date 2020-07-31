class StudentsController < ApplicationController
    before_action :set_student, only: [:edit, :show, :update] 
    
    def index
        @students = Student.all
    end
    def new
        @student = Student.new
    end
    def edit
    end
    def create
        @student = Student.new(student_params(:first_name, :last_name))
        @student.save
        redirect_to @student
    end
    def update
        @student.update(student_params(:first_name, :last_name))
        redirect_to @student
    end
    def show
    end

    private
    def set_student
        @student = Student.find(params[:id])
    end

    def student_params(*args)
        params.require(:student).permit(*args)
    end
end