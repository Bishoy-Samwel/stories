class AddAvgRateToPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :avg_rate, :float
  end
end
