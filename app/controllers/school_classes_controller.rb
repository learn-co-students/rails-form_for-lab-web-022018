class SchoolClassesController < ApplicationController
  # Build out the new, create, show, edit, and update actions in each of the controllers.

    def create
      # :school_class => { :title => "Computer Science", :room_number => 5
      @school_class = SchoolClass.create(params[:school_class])
      # redirect_to school_classes_path

      redirect_to school_class_path(@school_class)
    end

    def edit
      @school_class=SchoolClass.find(params[:id])
    end

    def index
      @school_classes=SchoolClass.all
    end

    def new
    end

    def show
      @school_class = SchoolClass.find(params[:id])
    end

    def update
      @school_class = SchoolClass.find(params[:id])
      @school_class.update(params[:school_class])
      redirect_to school_class_path(@school_class)
    end
end
