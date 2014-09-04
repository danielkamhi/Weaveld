class CitiesController < ApplicationController
  def index
  	@city = City.all
  end

  def show
  	@user = current_user
  	@city = City.find(params[:id])
  	@topics = @city.topics
  end

  def new
    @city = City.new
    if @city.update(city_params)
      @city.save
      redirect_to user_path
    end  
  end


  private

     def city_params
      params.require(:city).permit(:name)
    end
end
