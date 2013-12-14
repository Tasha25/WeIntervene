class SchoolDistrictsTable < ActiveRecord::Migration
   def change
    create_table :school_districts do |t|
      t.string :name
      t.string :contact_person
      t.string :contact_email
      t.string :street1
      t.string :street2
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :phone
      t.string :fax
      t.integer :school_system_id
      t.timestamps
    end
  end
end