class StudentsTable < ActiveRecord::Migration
    def change
    create_table :students do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :suffix
      t.string :identification_number
      t.string :date_of_birth
      t.integer :school_id
      t.string :image_url
      t.string :email
      t.string :street1
      t.string :street2
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :phone
      t.string :cell_phone
      t.string :counselor
      t.string :grade_level
      t.string :offical
      t.string :cohort
      t.timestamps
    end
  end
end