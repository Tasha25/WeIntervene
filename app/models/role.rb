# == Schema Information
#
# Table name: roles
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Role < ActiveRecord::Base
  attr_accessible(:title)

  has_and_belongs_to_many :users
end
