class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

 def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end


 private

   def user_params
      params.require(:user).permit(:first_name, :last_name, :isScientist, :email, :password)
   end

end
