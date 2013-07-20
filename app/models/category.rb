class Category < ActiveRecord::Base
  attr_accessible :description, :name, :path_img

  has_many :products
end