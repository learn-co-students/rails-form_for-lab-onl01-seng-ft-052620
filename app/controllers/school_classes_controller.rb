class SchoolClassesController < ApplicationController
  def index
    @school_classes = SchoolClass.all
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new
    @school_class.update(school_class_params)
    if @school_class.save
      redirect_to school_class_path(@school_class)
    else
      render :new
    end
  end

  def show
    set_school_class
  end

  def edit
    set_school_class
  end

  def update
    set_school_class
    @school_class.update(school_class_params)
    if @school_class.save
      redirect_to school_class_path(@school_class)
    else
      render :new
    end
  end



  private
  def set_school_class
    @school_class = SchoolClass.find_by_id(params[:id])
  end

  def school_class_params
    params.require(:school_class).permit(:title, :room_number)
  end
end
