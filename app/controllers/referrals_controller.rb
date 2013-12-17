class ReferralsController < ApplicationController
  def index
    @referral = Referral.all
  end

  def create
    @user = User.find(params[:user_id])
    @referral = Referral.new(params[:referral])
    if @referral.save
      redirect_to @user
    else
      render :new
    end
  end

end
