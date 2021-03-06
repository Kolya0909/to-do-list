class UsersController < ApplicationController

  def index
    redirect_to root_path
  end

  def new

  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end
  private

  def user_params
    params.require(:user).permit(:email,:name,:password, :password_confirmation)
  end

end
