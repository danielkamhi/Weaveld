class UsersController < ApplicationController
  def index
  
  end

  def show
  	@user = current_user
  end

  def update
  	@user = current_user
  	if @user.update(user_params) 
      sign_in @user, :bypass => true
  		redirect_to cities_path, notice: 'User was successfully updated.'
  	else
  		redirect_to @user, notice: 'Something went wrong. Please try again.'
  	end		
  end
  	
  def new
  end

  def edit
  end
 

private

     def user_params
      params.require(:user).permit(:fname, :lname, :departure, :arrival, :city, :adventure, :culture, :foodie, :family_trip, :performances, :avatar)
    end
end
