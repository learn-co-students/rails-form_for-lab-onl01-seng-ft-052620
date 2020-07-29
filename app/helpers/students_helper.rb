module StudentsHelper
  def current_student
    Student.find(params[:id])
  end

  def allowed_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
