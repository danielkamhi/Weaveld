class DestinationsController < ApplicationController
  def index
  end

  def show
  	@dest = Destination.find(params[:id])
  
  end

  def new
  end

  def edit
  end

  def submit
  	@dest = Destination.find(params[:id])


  end	
end
