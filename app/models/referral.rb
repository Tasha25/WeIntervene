# == Schema Information
#
# Table name: referrals
#
#  id         :integer          not null, primary key
#  comment    :string(255)
#  user_id    :integer
#  student_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Referral < ActiveRecord::Base
  attr_accessible :comment, :user_id, :student_id

  attr_accessible :service_provider_ids

  has_and_belongs_to_many :service_providers
  belongs_to :user
  belongs_to :student

end
