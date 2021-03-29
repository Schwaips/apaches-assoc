class Event < ApplicationRecord
  has_many :actor_events
  has_many :actors, through: :actor_events
  has_one_attached :photo
  belongs_to :user
end
