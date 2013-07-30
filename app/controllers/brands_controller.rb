class BrandsController < ApplicationController
  
  def index
    @brands = Brand.all
  end

  
  def new
    @brand = Brand.new
  end

  
  def create
    @brand = Brand.new(params[:brand])

    respond_to do |format|
      if @brand.save
        format.html { redirect_to brands_path(), notice: 'Category was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end  
  end

  
  def edit
    @brand = Brand.find(params[:id])
  end


  def show
   
  end
  
  
  def update
    @brand= Brand.find(params[:id])

    respond_to do |format|
      if @brand.update_attributes(params[:brand])
        format.html { redirect_to brands_path(), notice: 'Car was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  
  def destroy
    @brand = Brand.find(params[:id])
    @brand.destroy if Brand.check_count_products(params[:id]).count == 0
    respond_to do |format|
      format.html { redirect_to brands_url }
    end
  end


  def products
    @products = Product.where(brand_id: params[:id])   
    @categories = Category.all
    @brands = Brand.all 
  end

end
