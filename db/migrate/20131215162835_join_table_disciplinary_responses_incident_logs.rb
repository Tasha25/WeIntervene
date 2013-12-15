class JoinTableDisciplinaryResponsesIncidentLogs < ActiveRecord::Migration
  def change
    create_table :disciplinary_responses_incident_logs, :id => false do |t|
      t.integer :disciplinary_response_id
      t.integer :incident_log_id
    end
  end
end
