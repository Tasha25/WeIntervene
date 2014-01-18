class ServiceProviderController < ApplicationController
    def index
      @service_provider = ServiceProvider.all
    end
end