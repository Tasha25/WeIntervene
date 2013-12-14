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
  # attr_accessible :code, :description
end
