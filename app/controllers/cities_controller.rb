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
  end  

    def create
    @city = City.new(city_params)
    if @city.save
      redirect_to users_path
    else
      flash[:alert] = "There was a problem. Please try again."
      render :new
    end   
  end 
 
private

    def city_params
      params.require(:city).permit(:name, :europe)
    end 

  
end
