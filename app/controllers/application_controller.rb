class ApplicationController < ActionController::API
  include ActionView::Rendering

  def token(user)
    JWT.encode(
      { user_id: user.id, exp: (Time.now + 2.hours).to_i },
      Rails.application.secrets.secret_key_base,
      'HS256'
    )
  end

  def verify_token
    res = JWT.decode bearer_token, Rails.application.secrets.secret_key_base, true, { algorithm: 'HS256' }
    @current_user = res[0]['user_id']
  rescue StandardError
    head(:unauthorized)
  end

  private

  def bearer_token
    request.headers[:Authorization].split(' ').last
  end
end
