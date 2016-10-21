class ChangeDataTypeForFeatureIdToString < ActiveRecord::Migration
  def change
    change_column :product2s, :feature_id,  :string
  end
end
 
