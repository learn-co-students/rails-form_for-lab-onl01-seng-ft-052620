class StudentsController < ApplicationController

    before_action :set_student, only: [:show,:edit,:update]

    def show
    end

    def new
        @student = Student.new()
    end

    def create
        @student = Student.new(student_params(:first_name,:last_name))
        if @student.save
            redirect_to student_path(@student)
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @student.update(student_params(:first_name,:last_name))
            redirect_to @student
        else
            render :edit
        end
    end

    private

    def set_student
        @student = Student.find(params[:id])
    end

    def student_params(*args)
        params.require(:student).permit(*args)
    end

end
