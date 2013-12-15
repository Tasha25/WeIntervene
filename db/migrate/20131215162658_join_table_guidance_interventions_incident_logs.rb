class JoinTableGuidanceInterventionsIncidentLogs < ActiveRecord::Migration
  def change
    create_table :guidance_interventions_incident_logs, :id => false do |t|
      t.integer :guidance_intervention_id
      t.integer :incident_log_id
    end
  end
end
