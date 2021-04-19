class AuthController < ApplicationController
  before_action :set_user, only: %i[create]

  def create
    @token = token(@user)
    if @user.authenticate(params[:password])
      @token = token(@user)
      render :create, formats: :json, status: :ok
    else
      render :invalid_credentials, formats: :json, status: :unauthorized
    end
  end

  private

  def set_user
    @user = User.find_by(email: params[:email])
    render :not_found, formats: :json, status: :not_found unless @user
  end
end
