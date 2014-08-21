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
  end
end
