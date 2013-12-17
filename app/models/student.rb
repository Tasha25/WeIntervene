# == Schema Information
#
# Table name: students
#
#  id                    :integer          not null, primary key
#  first_name            :string(255)
#  middle_name           :string(255)
#  last_name             :string(255)
#  suffix                :string(255)
#  identification_number :string(255)
#  date_of_birth         :string(255)
#  school_id             :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  image_url             :string(255)
#

class Student < ActiveRecord::Base

  attr_accessible :image_url, :first_name, :middle_name, :last_name, :suffix, :identification_number, :date_of_birth, :school_id

  belongs_to :school
  has_and_belongs_to_many :parents
  has_many :incident_logs


end
