# == Schema Information
#
# Table name: service_providers
#
#  id                   :integer          not null, primary key
#  name                 :string(255)
#  mission              :string(255)
#  image_url            :string(255)
#  website              :string(255)
#  providers_email      :string(255)
#  contact_person       :string(255)
#  contact_email        :string(255)
#  street1              :string(255)
#  street2              :string(255)
#  city                 :string(255)
#  state                :string(255)
#  zip_code             :string(255)
#  work_phone           :string(255)
#  fax                  :string(255)
#  infraction_supported :string(255)
#  other                :text
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

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

  def self.find_filtered(keyword, options = {})
    conditions = []
    column_names.each do |column|
      conditions << "#{column} = #{sanitize(keyword)}" unless options[column].nil?
    end
    find(:all, :conditions => conditions.join(' or '))
  end

end
