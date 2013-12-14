# == Schema Information
#
# Table name: school_districts
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  contact_person   :string(255)
#  contact_email    :string(255)
#  street1          :string(255)
#  street2          :string(255)
#  city             :string(255)
#  state            :string(255)
#  zip_code         :string(255)
#  phone            :string(255)
#  fax              :string(255)
#  school_system_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class SchoolDistrict < ActiveRecord::Base

end
