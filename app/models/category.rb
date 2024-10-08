class Category < ApplicationRecord
  has_many :products

  # Validações
  validates :name, presence: true, uniqueness: true, length: { maximum: 50 }
end
