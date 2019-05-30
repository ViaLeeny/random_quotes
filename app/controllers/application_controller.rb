class ApplicationController < ActionController::Base
helper_method :current_user
helper_method :logged_in?



  def current_user
    if session[:user_id]
      User.find_by(id: session[:user_id])
    else
      nil
    end
  end


  def logged_in?
    !!current_user
  end
end
