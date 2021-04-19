class Measurement < ApplicationRecord
  belongs_to :user
  belongs_to :things_to_measure
  validates :value, :user_id, :things_to_measure_id, presence: true

  default_scope { order('created_at DESC') }
  scope :with_user, -> { includes(:user, :things_to_measure) }
  scope :group_by_t_name, -> { group_by { |m| m.things_to_measure.name } }
  scope :group_by_day, -> { group_by { |m| m.updated_at.beginning_of_day } }
end
