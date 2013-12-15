# == Schema Information
#
# Table name: users
#
#  id                  :integer          not null, primary key
#  user_name           :string(255)
#  password_digest     :string(255)
#  email               :string(255)
#  school_id           :integer
#  service_provider_id :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class User < ActiveRecord::Base
   attr_accessible(:user_name, :password_digest, :email, :school_id, :service_provider_id )

   has_many :referrals
   belongs_to :school
   has_many :incident_logs
   has_and_belongs_to_many :roles
end
