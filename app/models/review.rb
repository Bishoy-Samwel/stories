class Review < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :rate, presence: true, inclusion: { in: 1..5 }

  after_create :update_post_avg_rate

  private

  def update_post_avg_rate
    post.update_avg_rate
  end
end
