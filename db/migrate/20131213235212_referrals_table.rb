class ReferralsTable < ActiveRecord::Migration
  def change
    create_table :referrals do |t|
      t.string :comment
      t.integer :user_id
      t.integer :student_id
      t.integer :school_id, :null => false
      t.timestamps
    end
  end
end
