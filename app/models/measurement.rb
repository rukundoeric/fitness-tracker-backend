class Measurement < ApplicationRecord
  belongs_to :user
  belongs_to :things_to_measure
end
