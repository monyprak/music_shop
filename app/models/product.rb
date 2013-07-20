class Product < ActiveRecord::Base
  attr_accessible :description, :name, :path_img, :price, :top_product

  belongs_to :categories
  belongs_to :brands   
end
