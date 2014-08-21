class RegistrationsController < Devise::RegistrationsController
def home
@user = current_user
end

def update
	account_update_params = devise_parameter_sanitizer.sanitize(:account_update)

	  if account_update_params[:password].blank?
      	account_update_params.delete("password")
      	account_update_params.delete("password_confirmation")
   	  end

       @user = User.find(current_user.id)
    if @user.update(user_params)
	      set_flash_message :notice, :updated
	      # Sign in the user bypassing validation in case their password changed
	      sign_in @user, :bypass => true
	      redirect_to cities_path
    else
     	 render "edit"
    end
end	

protected

    def user_params
      params.require(:user).permit(:fname, :lname, :departure, :arrival, :city, :adventure, :culture, :foodie, :family_trip, :performances, :avatar)
    end

	def after_sign_up_path_for(user)
		# @user = User.find(session[:user_id])
    	current_user
  	end

end