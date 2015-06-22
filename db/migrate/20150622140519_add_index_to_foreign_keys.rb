class AddIndexToForeignKeys < ActiveRecord::Migration
  def change
    add_index :products, [:user_id, :category_id]
    add_index :reviews, [:user_id, :product_id]
  end
end
