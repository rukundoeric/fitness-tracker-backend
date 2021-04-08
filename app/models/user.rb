class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true, length: { minimum: 6 }

  def valid_password?(pwd)
    password == pwd
  end
end
