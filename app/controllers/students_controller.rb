class StudentsController < ApplicationController
  before_filter :require_authentication
  include PaginationHelper

  def index
    @user = User.find(session[:user_id])
    @user_page_id = session[:user_id]
    @students = Student.where(:school_id => @user.school_id)
    @page_count = (@students.length.to_f/4).ceil

    if !params[:search].nil? && !params[:search].empty?
    #say: If params[:search] is not nil and not empty
    @students = Student.search(params[:search], @user.school_id)
  end

  if !params[:page].nil? && !params[:page].empty?
    @students = paginate(@students, params[:page])
  end

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
  @user = User.find(params[:id])
  @school = School.find(params[:id])
  @student = Student.find(params[:id])
  @students = Student.all
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

private
def require_authentication
  redirect_to login_path if not session[:user_id]

end
end


