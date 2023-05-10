class Course < ApplicationRecord
  belongs_to :subscription
  has_many :bookings, dependent: :destroy

  validates :date, :available_places, presence: true
end
