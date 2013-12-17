class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @user = User.find(params[:user_id])
    @student = Student.new
  end

  def create
    user = User.find(params[:user_id])
    student = Student.new(params[:student])
    if student.save
      redirect_to(user_student_path(user, student))
    else
      render :new
    end
  end

  def show
    @school = School.find(params[:school_id])
    @student = Student.find(params[:id])
  end


  def edit
    @student = Student.find(params[:id])
    render :new
  end

  def update
    @user = User.find(params[:user_id])
    @student = Student.find(params[:id])
    if @student.update_attributes(params[:student])
      redirect_to [@user, @student]
    else
      render :edit
    end
  end

end


