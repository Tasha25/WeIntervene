class JoinTableIncidentLogsInfractions < ActiveRecord::Migration
  def change
    create_table :incident_logs_infractions, :id => false do |t|
      t.integer :incident_log_id
      t.integer :infraction_id
    end
  end
end