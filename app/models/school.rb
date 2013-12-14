# == Schema Information
#
# Table name: schools
#
#  id                 :integer          not null, primary key
#  district           :integer
#  name               :string(255)
#  mission            :string(255)
#  image_url          :string(255)
#  website            :string(255)
#  email              :string(255)
#  street1            :string(255)
#  street2            :string(255)
#  city               :string(255)
#  state              :string(255)
#  zip_code           :string(255)
#  work_phone         :string(255)
#  fax                :string(255)
#  school_district_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class School < ActiveRecord::Base

end
