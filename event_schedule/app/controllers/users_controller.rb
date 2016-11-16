class UsersController < ApplicationController
    def new 
    @user = User.new
    end

	def index 
		@users=User.all 
	end 

	def newform
		@event=Event.new
	end

	def create
		# binding.pry
  	@user = User.new(user_params)
  	if @user.save
    redirect_to log_in_path
 	 else
    render "new"
    end
    end

    private 
	def user_params 
		# binding.pry
		params.require(:user).permit(:firstname,:lastname,:username,:email,:phonenumber,:password,:password_confirmation) 
	end
end

	
