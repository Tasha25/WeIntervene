class UsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password_digest
      t.string :email
      t.integer :school_id
      t.integer :service_provider_id
      t.timestamps
    end
  end
end