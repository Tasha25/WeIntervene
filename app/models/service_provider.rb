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
      attr_accessible :name, :mission, :image_url, :website, :email ,:street1 ,:street2, :city, :state, :zip_code, :work_phone, :fax,:infraction_supported, :other
end
