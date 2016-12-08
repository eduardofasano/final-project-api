class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.float :quantity
      t.string :unit
      t.float :max_price
      t.float :min_price
      t.float :final_price
      t.string :description
      t.integer :seller_id
      t.integer :duration
      t.string :image

      t.timestamps
    end
  end
end
