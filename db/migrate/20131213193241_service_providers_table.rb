class ServiceProvidersTable < ActiveRecord::Migration
  def change
    create_table :service_providers do |t|
      t.string :organization_name
      t.string :organization_mission
      t.string :image_url
      t.string :website
      t.string :street1
      t.string :street2
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :work_phone
      t.string :cellphone
      t.string :fax
      t.string :name
      t.string :email
      t.string :infraction_supported
      t.boolean :accepted_by_district, default: true
      t.boolean :excluded_schools, default: true
      t.timestamps
    end
  end
end
