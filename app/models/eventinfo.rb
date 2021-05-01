class Eventinfo < ApplicationRecord
  validates :start_time, :end_time, presence: true
  belongs_to :event
  monetize :unit_price_cents
end
