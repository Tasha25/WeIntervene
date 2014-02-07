
class ServiceProvider < ActiveRecord::Base
  attr_accessible :name, :mission, :image_url, :website, :providers_email ,:street1 ,:street2, :city, :state, :zip_code, :work_phone, :fax,:infraction_supported, :other, :contact_person, :contact_email, :service_category_ids

  has_and_belongs_to_many :service_categories
  has_and_belongs_to_many :infractions
  has_and_belongs_to_many :referrals
  has_many :users

  def self.search(search)
    if search
      where('name LIKE ? OR mission LIKE ?', "%#{search}%", "%#{search}%" )
    else
      scoped
    end
  end


end
