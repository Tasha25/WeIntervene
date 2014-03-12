class UsersController < ApplicationController
  def index
    redirect_to root_url
  end

  def demo
    @user = User.find(params[:id])
  end

  def new
     @user = User.new
    render :layout => "signup"
  end

  def create
    @user = User.new(params[:user])
    if @user.save
    session[:user_id] = @user.id
    flash[:notice] = "Thank you for signing up! You are now logged in."
      redirect_to @user
    else
      render :action => :new, :layout => "signup"
    end
  end

  def show
    @user = User.find(session[:user_id])
    @referral = Referral.new
    @students = Student.order("students.created_at DESC").limit(5)
    @referrals = Referral.order("referrals.created_at DESC").limit(4)
    @incident_logs = IncidentLog.all
    @service_providers = ServiceProvider.order("service_providers.created_at DESC").limit(5)
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(params[:id])
      redirect_to @user, notice: 'User was successfully updated.'
      else
        render action: "edit"
      end
    end
end