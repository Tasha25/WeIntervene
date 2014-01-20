class ServiceProvidersController < ApplicationController
  def index
    @service_providers = ServiceProvider.all
  end

  def new
    @service_categories = ServiceCategory.all
    @service_provider = ServiceProvider.new
  end

  def show
  end

  def create
    @service_provider = ServiceProvider.new(params[:service_provider])
    if @service_provider.save
      flash[:notice] = 'Service Provider created.'
      redirect_to(:action => 'show')
    else
      render("new")
    end
  end
end

