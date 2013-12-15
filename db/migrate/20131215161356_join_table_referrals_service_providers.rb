class JoinTableReferralsServiceProviders < ActiveRecord::Migration
  def change
    create_table :referrals_service_providers, :id => false do |t|
      t.integer :referral_id
      t.integer :service_provider_id
    end
  end
end
