class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :product, foreign_key: true
      t.integer :buyer_id
      t.float :quantity

      t.timestamps
    end
  end
end
