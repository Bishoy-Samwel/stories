class AddCommentToReview < ActiveRecord::Migration[7.1]
  def change
    add_column :reviews, :comment, :text, null: false
  end
end
