class UsersController < ApplicationController
  def new
     @user = User.new
   end

   def create
     @user = User.new(user_params)

     if @user.save
       flash[:notice] = "Signed up!"
       redirect_to products_url
     else
       flash.now[:error] = 'Sorry, try again!'
       render :new
     end
   end

   def show
    @user = User.find(params[:id])
   end

   private
   def user_params
     params.require(:user).permit(:name, :email, :password, :password_confirmation)
   end



end
