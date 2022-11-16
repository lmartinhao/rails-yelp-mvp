class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, :rating, presence: { message: 'must be given please' }
  validates :rating, numericality: { only_integer: true }
  validates :rating, numericality: { in: (0..5) }
end
