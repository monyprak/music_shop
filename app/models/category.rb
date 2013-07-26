class Category < ActiveRecord::Base
  attr_accessible :description, :name, :path_img

  has_many :products

  
  def self.check_count_products(category_id)
    @product = Product.where(category_id: category_id)
  end  

end