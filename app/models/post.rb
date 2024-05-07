class Post < ApplicationRecord
  belongs_to :user
  has_many :reviews

  def update_avg_rate
    update(avg_rate: reviews.average(:rate))
  end
end

