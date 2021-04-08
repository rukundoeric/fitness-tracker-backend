class UserController < ApplicationController
  def index
    @user = User.all
  end

  def show
  end

  def create
    @user = User.new(user_params)

    if @user.save
      render json: {
        status: :created,
        data: {
          name: @user.name,
          email: @user.email,
          token: token(@user)
        }
      }
    else
      render json: { data: @user.errors, status: :unprocessable_entity }
    end  
  end

  private 
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
