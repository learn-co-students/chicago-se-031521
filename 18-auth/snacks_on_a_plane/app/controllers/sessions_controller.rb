class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def reset_views
    # session[:page_views] = nil
    session.delete(:view_count)
    
    redirect_back fallback_location: users_path
  end 

  def new
  end

  def create
    # find the user in the database by the name
    user = User.find_by(name: params[:session][:name])
    # compare their password to whatever password was passed in the form
    if user.authenticate(params[:session][:password])
    # if the password is correct, save the user_id to the session
        session[:user_id] = user.id 
        redirect_to snacks_path
    else
        flash[:errors] = user.errors.full_messages
        redirect_to login_path
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to login_path
  end


end
