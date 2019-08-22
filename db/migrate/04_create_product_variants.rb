class CreateProductVariants < ActiveRecord::Migration[5.2]
  def change
    create_table :product_variants do |t|
      t.string :title, limit: 100, null: false
      t.decimal :price, precision: 15, scale: 2, null: false
      t.references :product, foreign_key: true


      t.timestamps
    end
  end
end
