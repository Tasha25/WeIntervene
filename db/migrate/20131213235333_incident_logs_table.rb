class IncidentLogsTable < ActiveRecord::Migration
  def change
    create_table :incident_logs do |t|
      t.integer :student_id
      t.integer :user_id
      t.text :comment
      t.timestamps
    end
  end
end
