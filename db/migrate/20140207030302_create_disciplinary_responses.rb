class CreateDisciplinaryResponses < ActiveRecord::Migration
  def change
    create_table :disciplinary_responses do |t|
      t.string :code
      t.string :description
      t.timestamps
    end
  end
end
