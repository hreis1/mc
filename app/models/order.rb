class Order < ApplicationRecord
  has_many :order_items
  
  before_create :generate_token

  # Validações
  validates :total_price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  enum status: { pending: 1, paid: 3, canceled: 5 }

  private

  def generate_token
    self.token = SecureRandom.hex(10) # Gera um token aleatório único
  end
end
