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

  
end
