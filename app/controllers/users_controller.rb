class UsersController < ApplicationController
  def index
    redirect_to new_user_url
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to @user, :notice => "Signed up!"
    else
      render action: "new"
    end
  end

  def show
    @user = User.find(params[:id])
    @referral = Referral.new
    @student = Student.all
    @incident_log = IncidentLog.all
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