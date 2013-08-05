class CategoriesController < ApplicationController
  
  def index
    @categories = Category.all
  end

  
  def new
    @category = Category.new
  end

  
  def create
    @category = Category.new(params[:category])

    respond_to do |format|
      if @category.save
        format.html { redirect_to categories_path(), notice: 'Category was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end  
  end

  
  def edit
    @category = Category.find(params[:id])
  end


  def show
   
  end
  
  
  def update
    @category= Category.find(params[:id])

    respond_to do |format|
      if @category.update_attributes(params[:category])
        format.html { redirect_to categories_path(), notice: 'Category was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  
  def destroy
    @category = Category.find(params[:id])

    # @category.destroy if Category.get_products(params[:id]).count == 0
    if Category.get_products(params[:id]).count == 0 
      flash[:notice] = "The category has deleted."
      @category.destroy    
    else
      flash[:error] = "You can not delete this category, because has many products used it."
    end

    respond_to do |format|
      format.html { redirect_to categories_url }
    end
  end


  def products
    @products = Category.get_products(params[:id])
    @categories = Category.all
    @brands = Brand.all
  end

end
