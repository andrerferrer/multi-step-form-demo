class Meal < ApplicationRecord
  belongs_to :restaurant

  validates :price_in_cents, presence: true
  validates :name, presence: true

end
