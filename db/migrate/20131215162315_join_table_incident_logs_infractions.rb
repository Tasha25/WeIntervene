class JoinTableIncidentLogsInfractions < ActiveRecord::Migration
  def change
    create_table :incident_logs_infractions, :id => false do |t|
      t.integer :incident_logs_id
      t.integer :infractions_id
    end
  end
end