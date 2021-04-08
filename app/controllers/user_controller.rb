class UserController < ApplicationController
  before_action :verify_token, only: [:show]

  def show
    @user = User.find(params[:id])
    if @user
      render :show, status: :ok
    else
      head(:not_found)
    end
  end

  def create
    @user = User.new(user_params)

    if @user.save
      @token = token(@user)
      render :create, status: :created
    else
      head(:unprocessable_entity)
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
