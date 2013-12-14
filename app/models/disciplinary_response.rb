# == Schema Information
#
# Table name: disciplinary_responses
#
#  id          :integer          not null, primary key
#  code        :string(255)
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class DisciplinaryResponse < ActiveRecord::Base
  # attr_accessible :code, :name, :description
end

