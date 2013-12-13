class ServiceProvider < ActiveRecord::Base
      attr_accessible :name, :mission, :image_url, :website, :email
      , :street1 , :street2, :city, :state, :zip_code, :work_phone, :fax
      , :infraction_supported, :other


end