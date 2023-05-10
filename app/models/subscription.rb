class Subscription < ApplicationRecord
  has_many :courses
  has_many :bookings, through: :courses
end
