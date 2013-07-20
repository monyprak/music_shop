class BrandsController < ApplicationController
  
  def index
    @brands = Brand.all
  end

  
  def new
    @brands = Brand.new
  end

  
  def create
    @brands = Brand.new(params[:brand])

    respond_to do |format|
      if @brands.save
        format.html { redirect_to brands_path(), notice: 'Category was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end  
  end

  
  def edit
    @brands = Brand.find(params[:id])
  end


  def show
   
  end
  
  
  def update
    @brands= Brand.find(params[:id])

    respond_to do |format|
      if @brands.update_attributes(params[:brand])
        format.html { redirect_to brands_path(@brands), notice: 'Car was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  
  def destroy
    @brands = Brand.find(params[:id])
    @brands.destroy

    respond_to do |format|
      format.html { redirect_to brands_url }
    end
  end


end
