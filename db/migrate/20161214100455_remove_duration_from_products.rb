class RemoveDurationFromProducts < ActiveRecord::Migration[5.0]
  def change
    remove_columns :products, :duration
  end
end
