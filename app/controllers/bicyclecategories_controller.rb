class BicyclecategoriesController < ApplicationController
  def index
  	@data = Bicyclecategory.all
  end

  def add
  	@bicyclecategory = Bicyclecategory.new
  	if request.post? then 
  		@bicyclecategory = Bicyclecategory.create bicyclecategory_params
  		redirect_to '/bicyclecategories'
  	end
  end

  def edit
  	@bicyclecategory = Bicyclecategory.find params[:id]
  	if request.patch? then
  		@bicyclecategory.update bicyclecategory_params
  		redirect_to '/bicyclecategories'
  	end
  end

  private
  def bicyclecategory_params
  	params.require(:bicyclecategory).permit(:name, :memo)
  end
end
