class IncidentLogsController < ApplicationController

  before_filter :require_authentication

  def index
    @incident_log = IncidentLog.all
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