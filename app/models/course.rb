class Course < ApplicationRecord
  has_many :bookings, dependent: :destroy

  validates :date, :available_places, presence: true
end
