class SchoolsTable < ActiveRecord::Migration
   def change
    create_table :schools do |t|
      t.integer :district
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
      t.integer :school_district_id
      t.timestamps
    end
  end
end
