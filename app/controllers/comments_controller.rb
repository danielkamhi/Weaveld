class CommentsController < ApplicationController
  def index
  end

  def show
  end

  def new
  	@user = current_user
    @city = City.find(params[:city_id])
    @destination = Destination.find(params[:destination_id])
    @topic = Topic.find(params[:topic_id])
    @comment = Comment.new
  end

  def create
  	@user = current_user
    @city= City.find(params[:city_id])
    @destination = Destination.find(params[:destination_id])
	@topic = Topic.find(params[:topic_id])
	@comment = Comment.new(comment_params)
  		if @comment.save(comment_params)
        @topic.comments << @comment
        @user.comments << @comment
  		redirect_to city_destination_topic_path(@city, @destination, @topic), notice: 'Comment was a success!'
  	else
  		render "form", notice: 'Something went wrong. Please try again.'
  	end	
  end	


  private

     def comment_params
      params.require(:comment).permit( :body) if params[:comment]
    end
end
