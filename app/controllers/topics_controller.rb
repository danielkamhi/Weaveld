class TopicsController < ApplicationController
  def index
  	@user = current_user
  	@city = City.find(params[:city_id])
  	@dest = Destination.find(params[:destination_id])
  end	

  def show
    @user = current_user
    @city = City.find(params[:city_id])
    @dest = Destination.find(params[:destination_id])
    @topic = Topic.find(params[:id])
  end  

  def new
  	@user = current_user
  	@city= City.find(params[:city_id])
  	@destination = Destination.find(params[:destination_id])
  	@topic = Topic.new  
  end

  def create
  	@user = current_user
    @city= City.find(params[:city_id])
    @destination = Destination.find(params[:destination_id])
		@topic = Topic.new(topic_params)
  		if @topic.save(topic_params)
        @user.topics << @topic
        @destination.topics << @topic
  		redirect_to city_destination_topics_path(@city, @destination), notice: 'Post was a success!'
  	else
  		render "form", notice: 'Something went wrong. Please try again.'
  	end	
  end

private

     def topic_params
      params.require(:topic).permit(:title, :body) if params[:topic]
    end
end
