class SchoolClassesController < ApplicationController 

    def create
        @school_class = SchoolClass.new(params.require(:school_class))
        @school_class.save
        redirect_to school_class_path(@school_class)
    end

    def new
        @school_class = SchoolClass.new
    end 
    
    def show
    end

    def edit 
    end 
end 