class Category < ActiveRecord::Base
  attr_accessible :description, :name, :path_img

  has_many :products


  def self.get_products(id)
    @products = Product.where(category_id: id)
  end

end