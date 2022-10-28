class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :sku
      t.string :title
      t.string :nickname
      t.float :price, precision: 8, scale: 2, default: "0.0"
      t.integer :inventory, default: 0
      t.string :fulfillment_fee
      t.string :float
      t.float :unit_cost, precision: 8, scale: 2, default: "0.0"

      t.timestamps
    end
  end
end
