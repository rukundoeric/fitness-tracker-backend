class ApplicationController < ActionController::API
  def token(user)
    JWT.encode(
      {user_id: user.id, exp: (Time.now + 2.hours).to_i},
      Rails.application.secrets.secret_key_base,
      'HS256'
    )
  end
end