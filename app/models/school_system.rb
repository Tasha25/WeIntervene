# == Schema Information
#
# Table name: school_systems
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  contact_person :string(255)
#  contact_email  :string(255)
#  street1        :string(255)
#  street2        :string(255)
#  city           :string(255)
#  state          :string(255)
#  zip_code       :string(255)
#  phone          :string(255)
#  fax            :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class SchoolSystem< ActiveRecord::Base
  attr_accessible(:name, :contact_person, :contact_email, :street1, :street2, :city, :state, :zip_code, :phone, :fax)

  has_many :school_districts
end
