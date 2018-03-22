class SessionsController < ApplicationController
  skip_before_action :check_logined
  def index
    if session[:user_name]
      flash[:notice] = "#{session[:user_name]}でログインしています。"
    end
    if params.key?(:name) || params.key?(:password)
      user = User.find_by_name(params[:name])
      if user && user.authenticate(params[:password])
        session[:user_name] = params[:name]
        redirect_to params[:referer]
      else
        session[:user_name] = nil
        flash.now[:referer] = params[:referer]
        @error = "ユーザ名またはパスワードが間違っています。"
        render 'index'
      end
    end
  end
end
