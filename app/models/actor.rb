class Actor < ApplicationRecord
  CATEGORY = ["Président", "Acteur", "Trésorier", "Créateur lumière"]
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :role, inclusion: { in: CATEGORY }
  validates :email, uniqueness: true
  has_one_attached :photo
  # table de jointure avec actor events
  has_many :actor_events
  has_many :events, through: :actor_events
end
