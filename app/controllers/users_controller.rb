class UsersController < ApplicationController
    def index
        render json:{users: User.all}
    
    def 
        @user = User.new(user_params)
        if @user.save
          # Handle successful creation
          redirect_to user_path(@user), notice: 'User was successfully created.'
        else
          # Handle validation errors
          render :new
        end
      end
    
      # Read a user (show action)
      def show
        @user = User.find(params[:id])
       
      end
    
      # Update a user
      def update
        @user = User.find(params[:id])
        if @user.update(user_params)
          # Handle successful update
          redirect_to user_path(@user), notice: 'User was successfully updated.'
        else
          # Handle validation errors
          render :edit
        end
      end
    
      private
    
      def user_params
        params.require(:user).permit(:name, :email, :other_attributes)
      end
end
