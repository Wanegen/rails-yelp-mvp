class AddReviewsToRestaurants < ActiveRecord::Migration[7.1]
  def change
    add_reference :restaurants, :review, index: true
  end
end
