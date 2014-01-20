class ServiceCategoriesController < ApplicationController
  def index
    @service_categories = ServiceCategory.all
  end

  def new
    @service_providers = ServiceProvider.all
    @service_category = ServiceCategory.new
  end

  def create
    @service_category = ServiceCategory.new(params[:service_category])
    if @service_category.save
      flash[:notice] = 'Service Category created.'
      redirect_to(:action => 'show')
    else
      render("new")
    end
  end
end