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
#  encrypted_password  :string(255)
#  salt                :string(255)
#

class User < ActiveRecord::Base
    #password attribute will never be saved to database but will eixt onlin memory for use in performing the password confirmation and encryption step
    attr_accessor :password
   attr_accessible(:user_name, :email, :school_id, :service_provider_id, :password, :password_confirmation)

   has_many :referrals
   belongs_to :school
   has_many :incident_logs
   has_and_belongs_to_many :roles

   # has_secure_password

   email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

   validates :user_name, :presence => true,
                          :length => { :maximum => 50}
   validates :email, :presence => true,
                      :format  => { :with => email_regex },
                      :uniqueness => { :case_sensitive => false }

  validates :password, :presence => false,
                        :confirmation => true,
                        :length => { :within => 6..40 }


  before_save :encrypt_password

  def has_password?(submitted_password)
    #Compare encrypted_password with the encrypted version of
    #submitted_password
    encrypted_password == encrypt(submitted_password)
  end

  private

    def encrypt_password
      self.salt = make_salt if new_record?
      self.encrypted_password = encrypt(password)
    end

    def encrypt(string)
      secure_hash("{salt}--#{string}")
    end


    def make_salt
      secure_hash("{#Time.now.utc}--#{password}")
    end

    def secure_hash(string)
      Digest::SHA2.hexdigest(string)
    end
end



  #TODO: one of the test in user_spec is not working
