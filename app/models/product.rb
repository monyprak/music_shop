class Product < ActiveRecord::Base
  attr_accessible :description, :name, :path_img, :price, :top_product, :category_id, :brand_id, :photo

  belongs_to :category
  belongs_to :brand   

  def self.search_product(name)
    @products = Product.where("name like '%#{name}%'")
  end


  has_attached_file :photo, styles: { small: "140*175", larg: "218*273"},
                    url: "/images/products/:id/:style/:basename.:extension",
                    path: ":rails_root/public/images/products/:id/:style/:basename.:extension",
                    default_url: "/icon/default.jpg"                        

  # validates_attachment_presence :photo
  # validates_attachment_size :path_img, less_than: 5.megabytes
  # validates_attachment_content_type :path_img, content_type: ['image/jpeg', 'image/png']                   


end
