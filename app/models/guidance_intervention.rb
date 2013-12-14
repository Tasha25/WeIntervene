# == Schema Information
#
# Table name: guidance_interventions
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class GuidanceIntervention < ActiveRecord::Base
  # attr_accessible :name, :description
end
