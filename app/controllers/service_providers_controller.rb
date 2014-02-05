class Array
  def total_pages
    length / 4
  end
end

class ServiceProvidersController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @service_categories = ServiceCategory.all
    if !params[:service_provider].nil? && !params[:service_provider][:service_category_ids].nil?
      providers = ServiceProvider.
        joins(:service_categories).
        where(service_categories: { id: params[:service_provider][:service_category_ids] }).
        order("service_providers.created_at DESC").
        paginate(:page => params[:page], :per_page => 4)
    end

    if !params[:zip_code].nil?
      if !providers.nil?
        providers = providers.select do |provider|
          provider.zip_code == params[:zip_code]
        end
      else
        providers = ServiceProvider.select do |provider|
          provider.zip_code == params[:zip_code]
        end
      end
    end

    if providers.nil?
      providers = ServiceProvider.
        order("service_providers.created_at DESC").
        paginate(:page => params[:page], :per_page => 4)
    end
    @service_providers = providers
  end

  def new
    @user = User.find_by_id(session[:user_id])
    @service_categories = ServiceCategory.all
    @service_provider = ServiceProvider.new
  end

    def create
    @service_provider = ServiceProvider.new(params[:service_provider])
    if @service_provider.save
      flash[:notice] = 'Service Provider created.'
      redirect_to user_service_providers_url
    else
      flash[:notice] = 'Service Provider not created.'
      render :new
    end
  end


  def show
    @user = User.find(params[:user_id])
    @service_provider = ServiceProvider.find(params[:id])
  end

  def edit
  end

  def cbo
    @user = User.find(params[:user_id])
  end
end
