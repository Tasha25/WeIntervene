class InfractionsTable < ActiveRecord::Migration
  def change
    create_table :infractions do |t|
      t.string :code
      t.string :description
      t.timestamps
    end
  end
end
