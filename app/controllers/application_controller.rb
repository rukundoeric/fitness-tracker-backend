class ApplicationController < ActionController::API
  include ActionView::Rendering
  include ActionController::MimeResponds

  def token(user)
    JWT.encode(
      { user_id: user.id, exp: (Time.now + 2.hours).to_i },
      Rails.application.secrets.secret_key_base,
      'HS256'
    )
  end

  def verify_token
    @current_user = JWT.decode(
      bearer_token,
      Rails.application.secrets.secret_key_base,
      true,
      { algorithm: 'HS256' }
    )[0]['user_id']
  rescue StandardError => e
    @error = e
    render :unauthorized, formats: :json, status: :unauthorized
  end

  def current_user
    User.find(@current_user)
  end

  def check_is_admin
    render :no_access, formats: :json, status: :forbidden unless current_user.admin?
  end

  private

  def bearer_token
    request.headers[:Authorization].split(' ').last
  end
end
