class GuidanceInterventionsTable < ActiveRecord::Migration
  def change
    create_table :guidance_interventions do |t|
      t.string :name
      t.string :description
      t.timestamps
    end
  end
end