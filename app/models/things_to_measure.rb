class ThingsToMeasure < ApplicationRecord
  belongs_to :user
  validates :name, :unit, :user_id, presence: true

  scope :eager_loading, -> { includes(:user) }
end
