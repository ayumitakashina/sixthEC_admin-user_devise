class BicycleconfigsController < ApplicationController
  def index
  	@bicycleconfig = Bicycleconfig.find 1
  end

  def edit
  	@bicycleconfig = Bicycleconfig.find 1
      if request.patch? then
  		@bicycleconfig.update bicycle_params
  		redirect_to '/bicycleconfigs'
    end
  	end
  end

  private
  def bicycle_params
  	params.require(:bicycleconfig).permit(:name, :value)
  	
  end
