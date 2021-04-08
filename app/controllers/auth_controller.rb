class AuthController < ApplicationController
  before_action :set_user, only: [:create]

  def create
    if @user.valid_password?(params[:password])
      @token = token(@user)
      render :create, status: :ok
    else
      head(:bad_request)
    end
  end

  private

  def set_user
    @user = User.find_by(email: params[:email])
    head(:not_found) unless @user
  end
end
