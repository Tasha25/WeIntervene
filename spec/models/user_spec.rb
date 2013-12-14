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

require 'spec_helper'

describe User do

  it "has a user_name" do
    user = User.new
    user.user_name = "Bob"
    user.valid?
    expect(user).to have(:user_name)
  end


  it "has a password_digest"

   user.email = "Bob@ga.com"
  it "has an email"


end
