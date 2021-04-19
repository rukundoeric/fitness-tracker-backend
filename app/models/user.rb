class User < ApplicationRecord
  has_secure_password
  has_many :measurements
  has_many :things_to_measures
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, length: { minimum: 6 }
  validates :password, presence: true, length: { minimum: 8 }

  scope :eager_loading, -> { includes(:measurements, :things_to_measures) }

  def admin?
    role == 'admin'
  end
end
