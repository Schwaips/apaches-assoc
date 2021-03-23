class Actor < ApplicationRecord
  validates :first_name, presence: :true
  validates :last_name, presence: :true
  validates :role, collection:
  validates :email, uniqueness: :true
  has_one_attached :photo
end
