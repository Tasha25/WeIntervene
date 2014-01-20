class ServiceProvidersController < ApplicationController
  def index
    @service_providers = ServiceProvider.all
    @service_categories = ServiceCategory.all
  end

  def new
    @service_categories = ServiceCategory.all
    @service_provider = ServiceProvider.new
  end

  def show
    @service_provider = ServiceProvider.find(params[:id])
  end

  def create
    # id = params[:service_category_ids].collect(&:to_i)
    # @service = ServiceCategory.find_by_id(id)
    @service_provider = ServiceProvider.new(params[:service_provider])
    binding.pry
    if @service_provider.save
      flash[:notice] = 'Service Provider created.'
      redirect_to user_service_providers_url
    else
      render("new")
    end
  end
end

