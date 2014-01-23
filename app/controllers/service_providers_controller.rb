class ServiceProvidersController < ApplicationController
  def index
    @service_providers = ServiceProvider.order("service_providers.created_at DESC")
    @service_categories = ServiceCategory.all
  end

  def new
    @user = User.find(params[:user_id])
    @service_categories = ServiceCategory.all
    @service_provider = ServiceProvider.new
  end

  def show
    @service_provider = ServiceProvider.find(params[:id])
  end

  def create
    @service_provider = ServiceProvider.new(params[:service_provider])
    if @service_provider.save
      flash[:notice] = 'Service Provider created.'
      redirect_to user_service_providers_url
    else
      render("new")
    end
  end
end

