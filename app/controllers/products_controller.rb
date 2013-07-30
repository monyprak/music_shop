class ProductsController < ApplicationController
  
  def index
    @products = Product.all
    @categories = Category.all
    @brands = Brand.all
  end

  def new
    @product = Product.new
    @categories = Category.all
    @brands = Brand.all
  end

  
  def create
    @product = Product.new(params[:product])

    respond_to do |format|
      if @product.save
        format.html { redirect_to products_path(), notice: 'Category was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end  
  end

  
  def edit
    @product = Product.find(params[:id])
    @categories = Category.all
    @brands = Brand.all
  end


  def show
   
  end
  
  
  def update
    @product= Product.find(params[:id])

    respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to products_path(), notice: 'Car was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url }
    end
  end
end
