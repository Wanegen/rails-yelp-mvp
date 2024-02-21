class RemoveRatingAndAddRestaurantToReviews < ActiveRecord::Migration[7.1]
  def change
    remove_column :reviews, :rating, :integer
    add_reference :reviews, :restaurant, index: true
  end
end
