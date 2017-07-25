class BicyclepostsController < ApplicationController
  def index
  	@data = Bicyclepost.all.order('created_at desc')
  end

  def add
  	@bicyclepost = Bicyclepost.new
  	@categories = Bicyclecategory.all
  	if request.post? then
  		@bicyclepost = Bicyclepost.create bicycleposts_params
  		redirect_to 'bicycleposts'
  	end
  end

  def edit
  	@bicyclepost = Bicyclepost.find params[:id]
  	@categories = Bicyclecategory.all
  	if request.patch? then
  		@bicyclepost.update bicycleposts_params
  		redirect_to 'bicycleposts'
  	end
  end

  def delete
  	@bicyclepost = Bicyclepost.find(params[:id])
  	if request.post? then
  		@bicyclepost.destroy
  		redirect_to 'bicycleposts'
  	end
  end

  private
  def bicycleposts_params
  	params.require(:bicyclepost).permit(:name, :value, :description, :bicyclecategory_id)
  	
  end
end
