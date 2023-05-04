class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :course

  validates :total_price, presence: true
end
