class Course < ApplicationRecord
  belongs_to :subscription

  validates :date, :available_places, presence: true
end
