class JoinTableServiceCategoriesServiceProviders < ActiveRecord::Migration
  def change
    create_table :service_categories_service_providers, :id => false do |t|
      t.integer :service_category_id
      t.integer :service_provider_id
    end
  end
end

