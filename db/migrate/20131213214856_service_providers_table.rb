class ServiceProvidersTable < ActiveRecord::Migration
  def change
    create_table :service_providers do |t|
      t.string :name
      t.string :mission
      t.string :image_url
      t.string :website
      t.string :email
      t.string :street1
      t.string :street2
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :work_phone
      t.string :fax
      t.string :infraction_supported
      t.text :other
      t.timestamps
    end
  end
end