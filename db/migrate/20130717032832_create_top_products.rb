class CreateTopProducts < ActiveRecord::Migration
  def change
    create_table :top_products do |t|

      t.timestamps
    end
  end
end
