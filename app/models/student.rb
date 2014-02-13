
class Student < ActiveRecord::Base

  attr_accessible :image_url, :first_name, :middle_name, :last_name, :suffix, :identification_number, :date_of_birth, :school_id, :email, :street1, :street2, :city, :state, :zip_code, :phone, :cell_phone, :counselor, :cohort, :grade_level, :gender

  belongs_to :school
  has_and_belongs_to_many :parents
  has_many :incident_logs
  has_many :users, through: :schools

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.search(search, school_id)
    if search
      where('
        (
        first_name LIKE ?
        OR last_name LIKE ?
        OR identification_number LIKE ?
        )
        AND school_id = ?',
        "%#{search}%",
        "%#{search}%",
        "%#{search}%",
        "#{school_id}"
        )
    else
      scoped
    end
  end

end
