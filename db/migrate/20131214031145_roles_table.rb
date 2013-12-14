class RolesTable < ActiveRecord::Migration
    def change
    create_table :roles do |t|
      t.string :title
      t.timestamps
    end
  end
end