class JoinTableInfractionsServiceProviders < ActiveRecord::Migration
  def change
    create_table :infractions_service_providers, :id => false do |t|
      t.integer :infraction_id
      t.integer :service_provider_id
    end
  end
end
