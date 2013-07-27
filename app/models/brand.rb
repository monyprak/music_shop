class Brand < ActiveRecord::Base
  attr_accessible :description, :name, :path_img

  has_many :products

  def self.check_count_products(brand_id)
    @product = Product.where(brand_id: brand_id)
  end  
end
