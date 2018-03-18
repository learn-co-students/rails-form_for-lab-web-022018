class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    @student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to student_path(@student)
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(params.require(:student))
    # @school_class.update(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
    redirect_to student_path(@student)
  end

  # def update
  #   #raise params.inspect
  #   @student = Student.find(params[:id])
  #   @student.update(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
  #   redirect_to student_path(@student)
  # end


end
