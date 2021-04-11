class UserController < ApplicationController
  before_action :verify_token, only: %i[show]

  def show
    @user = User.find(params[:id])
    render :show, status: :ok
  rescue StandardError => e
    @error = e
    render :error, status: :not_found
  end

  def create
    @user = User.new(user_params)
    if @user.save
      @token = token(@user)
      render :create, status: :created
    else
      @error = @user.errors
      render :error, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:photo, :name, :email, :password)
  end
end
