class Restaurant < ApplicationRecord
  has_many :reservations
  belongs_to :owner, class_name: 'User'
  has_many :users, through: :reservations

  def meals_remaining(date)
    reservations.each do |r|
      
  end

end
