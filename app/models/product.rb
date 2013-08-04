class Product < ActiveRecord::Base
  attr_accessible :description, :name, :path_img, :price, :top_product, :category_id, :brand_id

  belongs_to :category
  belongs_to :brand   

  def self.search_product(name)
    @products = Product.where("name like '%#{name}%'")
  end


  has_attached_file :path_img, styles: { small: "140*175"},
                    url: "/assets/products/:id/:style/:basename.:extension",
                    path: ":rails_root/public/images/products/:id/:style/:basename.:extension"                        

  validates_attachment_presence :path_img
  validates_attachment_size :path_img, less_than: 5.megabytes
  validates_attachment_content_type :path_img, content_type: ['image/jpeg', 'image/png']                   


end
