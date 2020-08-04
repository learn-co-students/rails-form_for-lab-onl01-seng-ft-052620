class StudentsController < ApplicationController


  
    def new
      @student = Student.new
    end
  
    def create
      @student = Post.new
      @student.first_name = params[:first_name]
      @pstudent.last_name = params[:last_name]
      @student.save
      redirect_to student_path(@student)
    end
  
    def show
      @student = Student.find_by(id: params[:id])
    end
  
    def edit
      @student = Student.find_by(id: params[:id])
    end
  
    def update
      @student = Student.find_by(id: params[:id])
      @student.update(student_params)
      @student.save
      redirect_to student_path(@student)
    end
  
    private
  
    def student_params
      params.require(:student).permit(:first_name, :last_name)
    end
  end