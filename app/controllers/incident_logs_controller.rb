class IncidentLogsController < ApplicationController

  before_filter :require_authentication

  def index
   @user = User.find_by_id(session[:user_id])
    @incident_logs = @user.incident_logs

  # @referrals_user = @user.referrals
  # #have to show al the school referrals
  # @students = @user.school.students

  end

def new
  @user = User.find_by_id(session[:user_id])
  @student = Student.find_by_id(params[:student_id])
  @students = @user.school.students
  @service_providers = ServiceProvider.all
  @service_categories = ServiceCategory.all
  @incident_log = IncidentLog.new
end

  def create
    @user = User.find(params[:user_id])
    @incident_log = IncidentLog.new(params[:incident_id])
    if @incident_log.save
      redirect_to @user
    else
      render :new
    end
  end

  def show
    @student = Student.find_by_id(params[:student_id])
  end


  private
  def require_authentication
    redirect_to login_path if not session[:user_id]

  end

end