class ThingsToMeasure < ApplicationRecord
  belongs_to :user
  validates :name, :unit, :user_id, :maxValue, presence: true
  validates :name, uniqueness: true

  default_scope { includes(:user) }
end
