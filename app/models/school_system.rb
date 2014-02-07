

class SchoolSystem< ActiveRecord::Base
  attr_accessible(:name, :contact_person, :contact_email, :street1, :street2, :city, :state, :zip_code, :phone, :fax)

  has_many :school_districts
end
