class Restaurant < ApplicationRecord
  STRONG_PARAMS = %i[
    name
    address
  ]
  has_many :reviews, dependent: :destroy
  has_many :meals, dependent: :destroy
  validates :address, presence: true
  validates :name, presence: true
end
