class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
        
        if session[:view_count] 
            session[:view_count] = session[:view_count].to_i + 1
        else 
            session[:view_count] = 1
        end 

        render :show
    end

    def new
        @user = User.new
    end
  
    def create
        user = User.create(user_params)
        session[:user_id] = user.id

        redirect_to snacks_path
    end

    private
    def user_params
        params.require(:user).permit(:name, :password, :motto, :img_url)
    end

end
