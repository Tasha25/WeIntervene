class SessionController < ApplicationController
  def new
    render :layout => "login"
  end

  def create
    user = User.find_by_email(params[:email].downcase)
   if user && user.has_password?(params[:password])
    # if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user), :notice => "Logged in!"
    else
      flash[:error] = "Invalid email or password"
      render :action => :new, :layout => "login"

    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end
end

