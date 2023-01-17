class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all 
    render json: @users, status: :ok
  end

  private
  def user_params
  end
end
