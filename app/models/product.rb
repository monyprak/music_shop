class Product < ActiveRecord::Base
  attr_accessible :description, :name, :path_img, :price, :top_product, :category_id, :brand_id

  belongs_to :category
  belongs_to :brand   
end
