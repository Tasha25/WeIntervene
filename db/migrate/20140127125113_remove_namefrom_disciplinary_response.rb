class RemoveNamefromDisciplinaryResponse < ActiveRecord::Migration
  def up
    remove_column :disciplinary_responses, :name
  end

  def down
  end
end
