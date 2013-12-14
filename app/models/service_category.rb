# == Schema Information
#
# Table name: service_categories
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ServiceCategory < ActiveRecord::Base
  # attr_accessible :name
  has_many :names
end
