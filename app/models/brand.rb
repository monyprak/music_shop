class Brand < ActiveRecord::Base
  attr_accessible :description, :name, :path_img, :photo

  has_many :products


  def self.get_products(id)
    @products = Product.where(brand_id: id)
  end

  has_attached_file :photo, styles: {larg: "218*273"},
                    url: "/images/brands/:id/:style/:basename.:extension",
                    path: ":rails_root/public/images/brands/:id/:style/:basename.:extension"                        

  # validates_attachment_presence :photo
  # validates_attachment_size :path_img, less_than: 5.megabytes
  # validates_attachment_content_type :path_img, content_type: ['image/jpeg', 'image/png'] 
end
