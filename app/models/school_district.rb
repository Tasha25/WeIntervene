

class SchoolDistrict < ActiveRecord::Base
    attr_accessible(:name, :contact_person, :contact_email, :street1, :street2, :city, :state, :zip_code, :phone, :fax, :school_system_id )

    belongs_to :school_system
end
