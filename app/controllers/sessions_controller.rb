class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(user_name: params[:user_name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user
    else
      flash[:errors] = ['Email and/or password do not match.']
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to home_path
  end

end
