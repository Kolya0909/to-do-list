module Authenticate
  extend ActiveSupport::Concern
  
  included do

    def current_user
      @current_user ||= User.find_by(id: session[:user_id]).decorate if session[:user_id].present? && User.find_by(id: session[:user_id])!=nil
    end

    def user_signed_in?
      if current_user.present?
        true
      else
        false
      end
    end

    helper_method :current_user, :user_signed_in?

  end
  
end