class ChangesForeignkeyToReviews < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :reviews, column: :user_id
  end
end
