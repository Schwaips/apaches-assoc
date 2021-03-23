class Actor < ApplicationRecord
  CATEGORY = ["Président", "Acteur", "Trésorier"]
  validates :first_name, presence: :true
  validates :last_name, presence: :true
  validates :role, inclusion: { in: CATEGORY }
  validates :email, uniqueness: :true
  has_one_attached :photo
end
