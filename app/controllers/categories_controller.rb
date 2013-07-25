class CategoriesController < ApplicationController
  
  def index
    @categories = Category.all
  end

  
  def new
    @categories = Category.new
  end

  
  def create
    @categories = Category.new(params[:category])

    respond_to do |format|
      if @categories.save
        format.html { redirect_to categories_path(), notice: 'Category was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end  
  end

  
  def edit
    @categories = Category.find(params[:id])
  end


  def show
   
  end
  
  
  def update
    @categories= Category.find(params[:id])

    respond_to do |format|
      if @categories.update_attributes(params[:category])
        format.html { redirect_to categories_path(), notice: 'Car was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  
  def destroy
    @categories = Category.find(params[:id])
    @categories.destroy

    respond_to do |format|
      format.html { redirect_to categories_url }
    end
  end


end
