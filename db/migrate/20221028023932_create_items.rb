class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :sku
      t.string :title
      t.string :nickname
      t.float :price
      t.integer :inventory
      t.string :fulfillment_fee
      t.string :float
      t.float :unit_cost

      t.timestamps
    end
  end
end
