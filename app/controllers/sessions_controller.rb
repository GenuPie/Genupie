class SessionsController < ApplicationController
  def new
    render json: {action_name: action_name}
  end

  def create
    user = User.find_by_name(params[:name].downcase)
    if user && user.authenticate(params[:password])
      sign_in user
      render json: {status: 200, message: 'success'}
    else
      render json: {status: 422, message: '登录失败，账号或密码不正确'}
    end
  end
end
