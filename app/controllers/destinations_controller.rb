class DestinationsController < ApplicationController
  def index
  end

  def show
  	@dest = Destination.find(params[:id])
  
  end

  def new
    @destination = Destination.new
  end  

    def create
    @destination = Destination.new(dest_params)
    if @destination.save
      redirect_to users_path
    else
      flash[:alert] = "There was a problem. Please try again."
      render :new
    end   
  end 
   def submit
    @dest = Destination.find(params[:id])


  end 
private

    def dest_params
      params.require(:destination).permit(:name, :city_id, :foodie, :adventure, :performances, :culture, :family_trip)
    end 


end
