class Event < ApplicationRecord
  validates :start_time, :end_time, presence: true
  has_many :actor_events, dependent: :destroy
  has_many :actors, through: :actor_events
  has_many :eventinfos, dependent: :destroy
  has_one_attached :photo
  belongs_to :user, dependent: :destroy
  belongs_to :basket

  default_scope -> { order(:start_time) }  # Our meetings will be ordered by their start_time by default

  def time
    "#{start_time.strftime('%I:%M %p')} - #{end_time.strftime('%I:%M %p')}"
  end
end
