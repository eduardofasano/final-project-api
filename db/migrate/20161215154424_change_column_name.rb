class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :products, :image, :image1
  end
end
