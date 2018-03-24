class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  before_action :check_logined

  private
    def check_logined
      if session[:user_name] then
        begin
          @user = User.find_by(user_name: session[:user_name])
        rescue ActiveRecord::RecordNotFound
          reset_session
        end
      end

    unless @user
      flash[:referer] = request.fullpath
      redirect_to users_sign_in_path and return
    end
    end
end
