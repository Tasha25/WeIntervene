class ReferralsController < ApplicationController
 # before_filter :require_authentication

 def index
  @user = User.find_by_id(session[:user_id])
  @referrals_user = @user.referrals
  @referrals_school = @user.school.referrals
  #have to show al the school referrals
  @students = @user.school.students
end

def create
  @user = User.find(session[:user_id]) # user that makes the referral
  @school = @user.school.id
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

def show
  @user = User.find_by_id(session[:user_id])
  @student = Student.find_by_id(params[:student_id])
  @referral = Referral.find_by_id(params[:id])
end

def new
  @user = User.find_by_id(session[:user_id])
  @student = Student.find_by_id(params[:student_id])
  @students = Student.all
  @service_providers = ServiceProvider.all
  @service_categories = ServiceCategory.all
  @referral = Referral.new
end

def new_no_pic
  @user = User.find_by_id(session[:user_id])
  @service_providers = ServiceProvider.all
  @service_categories = ServiceCategory.all
  @referral = Referral.new
end


private
def require_authentication
  redirect_to login_path if not session[:user_id]

end

end


