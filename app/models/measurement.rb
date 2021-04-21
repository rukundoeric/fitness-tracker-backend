class Measurement < ApplicationRecord
  belongs_to :user
  belongs_to :things_to_measure
  validates :value, :user_id, :things_to_measure_id, presence: true

  delegate :name, to: :things_to_measure, prefix: 'things_to_measure'

  default_scope { order('created_at DESC') }
  default_scope { includes(:user, :things_to_measure) }

  scope :group_by_t_name, -> { group_by(&:things_to_measure_name) }
  scope :group_by_day, -> { group_by { |m| m.updated_at.beginning_of_day } }
end
