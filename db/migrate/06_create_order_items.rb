class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.integer :quantity, null: false
      t.decimal :price, precision: 15, scale: 2, null: false
      t.references :order, foreign_key: true
      t.references :product, foreign_key: true
      
      t.timestamps
    end

  end
end
