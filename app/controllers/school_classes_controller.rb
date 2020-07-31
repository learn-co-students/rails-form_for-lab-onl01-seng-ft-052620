class SchoolClassesController < ApplicationController
    
    def index 
        @school_classes = SchoolClass.all 
    end
    def show 
        set_class 
    end
    def new 
        @school_classes = SchoolClass.new 
    end
    def create 
        @school_classes = SchoolClass.new(class_params(:title, :room_number))
        @school_classes.save
        redirect_to school_class_path(@school_classes)
    end
    def update 
        set_class 
        @school_classes.update(class_params(:title, :room_number))
        redirect_to school_class_path(@school_classes)
    end
    def edit 
        set_class
    end
    private 
    def class_params(*args)
        params.require(:school_class).permit(*args)
    end
    def set_class 
        @school_classes = SchoolClass.find(params[:id])
    end
end
