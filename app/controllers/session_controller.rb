class SessionController < ApplicationController
  def new
    @user = User.all
    render :layout => "login"
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.has_password?(params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user), :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end
end


#authenticated allows you to fetch the user whose addres matches the value entered in the form. Then we authenticate on that user because has_secure_password gives us that
