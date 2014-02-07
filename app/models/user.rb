class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :user_name, :school_id, :service_provider_id

  has_many :referrals
  belongs_to :school
  has_many :incident_logs
  has_and_belongs_to_many :roles
  has_many :students, through: :schools
end
