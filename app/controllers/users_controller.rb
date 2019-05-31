class UsersController < ApplicationController



  def show
    authorized?
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create user_params
    if @user.valid?
      @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def destroy
    @user = User.find(params[:id])
    if session[:user_id].to_int == @user.id
      @user.destroy
      redirect_to home_path
    else
      flash[:errors] = ["Cannot delete"]
      redirect_to new_user_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :user_name, :password)
  end


end
