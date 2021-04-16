class UsersController < ApplicationController
    skip_before_action :authorized, only: [:new, :create]

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

        if user.valid?
            session[:user_id] = user.id
            redirect_to snacks_path
        else
            flash[:errors] = user.errors.full_messages
            redirect_to signup_path
        end 
    end

    private
    def user_params
        params.require(:user).permit(:name, :password, :motto, :img_url)
    end

end
