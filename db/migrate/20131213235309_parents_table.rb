class ParentsTable < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :suffix
      t.string :email
      t.string :street1
      t.string :street2
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :work_phone
      t.string :cell_phone
      t.string :guardian_role
    end
  end
end
