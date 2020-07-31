class StudentsController < ApplicationController 
    def index 
        @students = Student.all 
    end

    def show 
        set_student 
    end

    def new 
        @students = Student.new 
    end

    def create 
        @students = Student.new(class_params(:first_name, :last_name))
        @students.save
        redirect_to student_path(@students)
    end

    def update 
        set_student 
        @students.update(class_params(:first_name, :last_name))
        redirect_to student_path(@students)
    end

    def edit 
        set_student
    end

    private 

    def class_params(*args)
        params.require(:student).permit(*args)
    end
    
    def set_student 
        @students = Student.find(params[:id])
    end
end