class User < ApplicationRecord
  has_many :measurements
  has_many :things_to_measures
  validates :name, presence: true, length: { minimum: 3 }
  validates :email, presence: true, uniqueness: true, length: { minimum: 6 }
  validates :password, presence: true, length: { minimum: 8 }

  def valid_password?(pwd)
    password == pwd
  end
end
