class AddTopProductToProducts < ActiveRecord::Migration
  def change
    add_column :products, :top_product, :boolean
  end
end
