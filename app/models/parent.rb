# == Schema Information
#
# Table name: parents
#
#  id            :integer          not null, primary key
#  first_name    :string(255)
#  middle_name   :string(255)
#  last_name     :string(255)
#  suffix        :string(255)
#  email         :string(255)
#  street1       :string(255)
#  street2       :string(255)
#  city          :string(255)
#  state         :string(255)
#  zip_code      :string(255)
#  work_phone    :string(255)
#  cell_phone    :string(255)
#  guardian_role :string(255)
#

class Parent < ActiveRecord::Base
  attr_accessible :first_name, :middle_name, :last_name, :suffix, :email, :street1, :street2, :city, :state, :zip_code, :work_phone, :cell_phone, :guardian_role

  has_and_belongs_to_many :students

end
