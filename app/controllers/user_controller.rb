class UserController < ApplicationController
  before_action :verify_token, only: [:show]

  def show
    @user = User.find(params[:id])
    render :show, status: :ok
  rescue StandardError
    render :not_found, status: :not_found
  end

  def create
    @user = User.new(user_params)
    if @user.save
      @token = token(@user)
      render :create, status: :created
    else
      render :not_save, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
