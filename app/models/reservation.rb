class Reservation < ApplicationRecord

  validates :party_size, :date, presence: true

  belongs_to :user
  belongs_to :restaurant
end
