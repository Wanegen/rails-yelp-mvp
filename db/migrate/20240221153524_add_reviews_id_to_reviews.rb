class AddReviewsIdToReviews < ActiveRecord::Migration[7.1]
  def change
    add_reference :reviews, :review, index: true
  end
end
