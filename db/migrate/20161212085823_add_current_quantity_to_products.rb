class AddCurrentQuantityToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :current_quantity, :float
  end
end
