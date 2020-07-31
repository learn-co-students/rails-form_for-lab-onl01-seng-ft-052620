class SchoolClassesController < ApplicationController

    before_action :set_school_class, only: [:show,:edit,:update]

    def show
    end

    def new
        @school_class = SchoolClass.new()
    end

    def create
        @school_class = SchoolClass.new(school_class_params(:title,:room_number))
        if @school_class.save
            redirect_to @school_class
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @school_class.update(school_class_params(:title,:room_number))
            redirect_to @school_class
        else
            render :edit
        end
    end

    private

    def set_school_class
        @school_class = SchoolClass.find(params[:id])
    end

    def school_class_params(*args)
        params.require(:school_class).permit(:title,:room_number)
    end

end
