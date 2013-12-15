# == Schema Information
#
# Table name: infractions
#
#  id          :integer          not null, primary key
#  code        :string(255)
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Infraction < ActiveRecord::Base
   attr_accessible :code, :description

   has_and_belongs_to_many :service_providers
   has_and_belongs_to_many :incident_logs
end
