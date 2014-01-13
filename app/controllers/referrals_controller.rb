class ReferralsController < ApplicationController
 before_filter :require_authentication

 def index
  @referral = Referral.all
end

def create
  @user = User.find(session[:user_id])
  @referral = Referral.new(params[:referral])
  if @referral.save
    redirect_to @user
  else
    render :new
  end
end

def show
  @student = Student.find_by_id(params[:student_id])
end

def new
  @user = User.find_by_id(session[:user_id])
  @student = Student.find_by_id(params[:student_id])
  @service_providers = ServiceProvider.all
  @service_categories = ServiceCategory.all
  @referral = Referral.new
end

def new_no_pic
  @user = User.find_by_id(session[:user_id])
  @students = Student.all
  @service_providers = ServiceProvider.all
  @service_categories = ServiceCategory.all
  @referral = Referral.new
end


private
def require_authentication
  redirect_to login_path if not session[:user_id]

end

end


