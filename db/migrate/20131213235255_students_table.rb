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
      t.timestamps
    end
  end
end
