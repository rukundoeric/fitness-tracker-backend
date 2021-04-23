class AuthController < ApplicationController
  before_action :sanitize_params, only: %i[create]

  def create
    @token = token(@user)
    if @user.password == @password
      @token = token(@user)
      render :create, formats: :json, status: :ok
    else
      render :invalid_credentials, formats: :json, status: :unauthorized
    end
  end

  private

  def sanitize_params
    email = sanitize params[:email]
    @password = sanitize params[:password]
    @user = User.find_by(email: email)
    render :not_found, formats: :json, status: :not_found unless @user
  end
end
