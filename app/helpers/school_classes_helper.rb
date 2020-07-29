module SchoolClassesHelper
  def current_school_class
    SchoolClass.find(params[:id])
  end

  def allowed_params
    params.require(:school_class).permit(:title, :room_number)
  end
end
