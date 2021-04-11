class Measurement < ApplicationRecord
  belongs_to :user
  belongs_to :things_to_measure
  validates :value, :user_id, :things_to_measure_id, presence: true

  scope :eager_loading, -> { includes(:user, :things_to_measure) }
end
