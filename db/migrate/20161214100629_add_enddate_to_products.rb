class AddEnddateToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :enddate, :datetime
  end
end
