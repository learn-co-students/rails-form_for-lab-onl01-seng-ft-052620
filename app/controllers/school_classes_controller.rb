class SchoolClassesController < ApplicationController
  include SchoolClassesHelper

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create!(allowed_params)
    redirect_to school_class_path(@school_class) 
  end

  def show
    @school_class = current_school_class
  end

  def edit
    @school_class = current_school_class
  end

  def update
    @school_class = SchoolClass.update(allowed_params)
    redirect_to school_class_path(@school_class) 
  end


end
