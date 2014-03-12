class SchoolsController < ApplicationController
 def index
  @user = User.find(session[:user_id])
  @user_page_id = params[:user_id]
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

  def show
     @user = User.find(session[:user_id])
     @user_page_id = params[:user_id]
  end

def create
  @user = User.find(session[:user_id]) # user that makes the referral
  student_ids = params[:students].split(',')
  service_provider = ServiceProvider.find(params[:service_provider_id])
  school = School.find(params[:school_id])

  student_ids.each do |student_id|
    new_referral = Referral.create(
      :user_id => session[:user_id],
      :student_id => student_id,
      :comment => params[:comment],
      :service_provider_ids => params[:service_provider_id],
      :school_id => params[:school_id]
    )
    if new_referral.save
      redirect_to @user
    else
      render :new
    end
  end
end


end