class ProductsController < ApplicationController
  
  def index
    @products = Product.all
  end

  def new
    @products = Product.new
  end

  
  def create
    @products = Product.new(params[:product])

    respond_to do |format|
      if @products.save
        format.html { redirect_to products_path(), notice: 'Category was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end  
  end

  
  def edit
    @products = Product.find(params[:id])
  end


  def show
   
  end
  
  
  def update
    @products= Product.find(params[:id])

    respond_to do |format|
      if @products.update_attributes(params[:product])
        format.html { redirect_to products_path(@products), notice: 'Car was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  
  def destroy
    @products = Product.find(params[:id])
    @products.destroy

    respond_to do |format|
      format.html { redirect_to products_url }
    end
  end
end
