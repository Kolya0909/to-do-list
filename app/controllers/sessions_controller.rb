class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by email:params[:email]
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash[:warning] = "Invalid password or email!"
      redirect_to root_path
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end

end
