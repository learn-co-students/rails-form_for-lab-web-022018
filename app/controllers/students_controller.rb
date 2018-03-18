class StudentsController < ApplicationController

  # Build out the new, create, show, edit, and update actions in each of the controllers.


  def create
    # @school_class = SchoolClass.create(params[:school_class])
    # redirect_to school_classes_path
    @student = Student.create(params[:student])
    # redirect_to school_class_path(@school_class)
    redirect_to student_path(@student)
  end

  def edit
    @student=Student.find(params[:id])
  end

  def index
    @students = Student.all
    @test = "HELLO"
  end

  def new
    @student=Student.new
  end

  def show
    @student=Student.find(params[:id])
  end

  def update
    @student=Student.find(params[:id])
    @student.update(params[:student])
    redirect_to student_path(@student)
  end
end #class
