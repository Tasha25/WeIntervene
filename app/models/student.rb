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
#  image_url             :string(255)
#  email                 :string(255)
#  street1               :string(255)
#  street2               :string(255)
#  city                  :string(255)
#  state                 :string(255)
#  zip_code              :string(255)
#  phone                 :string(255)
#  cell_phone            :string(255)
#  counselor             :string(255)
#  grade_level           :string(255)
#  offical               :string(255)
#  cohort                :string(255)
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class Student < ActiveRecord::Base

  attr_accessible :image_url, :first_name, :middle_name, :last_name, :suffix, :identification_number, :date_of_birth, :school_id, :email, :street1, :street2, :city, :state, :zip_code, :phone, :cell_phone, :counselor, :cohort, :grade_level

  belongs_to :school
  has_and_belongs_to_many :parents
  has_many :incident_logs

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.search(search)
    if search
      where('first_name LIKE ? OR last_name LIKE ? OR identification_number LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%")
    else
      scoped
    end
  end

end
