class UsersController < ApplicationController
  skip_before_action :check_logined
  def sign_in
    if session[:user_name]
      redirect_to home_index_path and return
    end
    if params.key?(:user_name) || params.key?(:password)
      user = User.find_by(user_name: params[:user_name])
      if user && user.authenticate(params[:password])
        session[:user_name] = params[:user_name]
        redirect_to params[:referer]
      else
        session[:user_name] = nil
        flash.now[:referer] = params[:referer]
        @error = "ユーザ名またはパスワードが間違っています。"
        render 'sign_in'
      end
    end
  end
  def sign_out
    # session[:user_name] = nil
    reset_session
    redirect_to home_index_path
  end
end
