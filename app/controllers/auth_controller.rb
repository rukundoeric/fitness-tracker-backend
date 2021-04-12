class AuthController < ApplicationController
  before_action :set_user, only: %i[create]

  def create
    if @user.valid_password?(params[:password])
      @token = token(@user)
      render :create, status: :ok
    else
      render :invalid_credentials, status: :bad_request
    end
  end

  private

  def set_user
    @user = User.find_by(email: params[:email])
    render :not_found, status: :not_found unless @user
  end
end
