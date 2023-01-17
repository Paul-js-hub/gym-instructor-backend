class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all 
    render json: @users, status: :ok
  end

  def create
    @user = User.new(user_params)
    if @user.save
      token = encode_token({user_id: @user.id})
      render json: { user: @user, token:token, message: "User created successfully" }, status: :created
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private
  def user_params
    params.require(:user).permit(:full_name, :email, :username, :password)
  end
end
