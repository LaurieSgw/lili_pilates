class RemoveReferenceToReviews < ActiveRecord::Migration[7.0]
  def change
    remove_reference :reviews, :user, foreign_key: true, index: false
  end
end
