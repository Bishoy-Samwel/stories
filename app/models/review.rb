class Review < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :rate, presence: true, inclusion: { in: 1..5 }
end
