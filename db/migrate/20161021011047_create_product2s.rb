class CreateProduct2s < ActiveRecord::Migration
  def change
    create_table :product2s do |t|
      t.string :name
      t.references :feature, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
