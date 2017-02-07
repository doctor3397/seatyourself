class Restaurant < ApplicationRecord
  has_many :reservations
  belongs_to :owner, class_name: 'User'
  has_many :users, through: :reservations

end
