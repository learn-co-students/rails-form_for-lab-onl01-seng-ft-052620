class SchoolClassesController < ApplicationController

    def index
        @school_classes = SchoolClass.all
    end

    def show
        @school_classes = SchoolClass.find(params[:id])
    end

    def new
        @school_classes = SchoolClass.new
    end

    def create
        @school_classes = SchoolClass.new(post_params(:title, :room_number))
        @school_classes.save
        redirect_to school_class_path(@school_classes)
    end

    def update
        @school_classes = SchoolClass.find(params[:id])
        @school_classes.update(post_params(:title, :room_number))
        redirect_to school_class_path(@school_classes)
    end

    def edit
        @school_classes = SchoolClass.find(params[:id])
    end


    private

	def post_params(*args)
		params.require(:school_class).permit(*args)
	end
    
end