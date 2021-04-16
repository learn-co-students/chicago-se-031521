class SessionsController < ApplicationController
  def reset_views
    # session[:page_views] = nil
    session.delete(:view_count)
    
    redirect_back fallback_location: users_path
  end 
end
