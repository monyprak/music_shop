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
    # @product = params[:product]
  end

  
  def create
    @product = Product.new(params[:product])

    if @product.save
      redirect_to products_path(), notice: "Product was successfully created."
    else
      # @product = params[:product]
      # redirect_to new_product_path()
      @categories = Category.all
      @brands = Brand.all
      render action: "new"
    end
  end

  
  def edit
    @product = Product.find(params[:id])
    @categories = Category.all
    @brands = Brand.all
  end


  def show
    @product = Product.find(params[:id])
    @categories = Category.all
    @brands = Brand.all 
  end
  
  
  def update
    @product= Product.find(params[:id])

    
    if @product.update_attributes(params[:product])
      # flash[:notice] = "Hello Flash"
      redirect_to products_path(), notice: 'Product was successfully updated.'
    else
      redirect_to :back
    end
  
  end

  
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "The product has deleted"
    respond_to do |format|
      format.html { redirect_to products_url }
    end
  end


  def top_products
    @products = Product.where(top_product: true)
    @categories = Category.all
    @brands = Brand.all
    # render action: "index" 
  end


  def search
    @products = Product.search_product(params[:name])
    @categories = Category.all
    @brands = Brand.all
    # render action: "index"
  end

end
