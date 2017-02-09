class Restaurant < ApplicationRecord
  has_many :reservations
  belongs_to :owner, class_name: 'User'
  has_many :users, through: :reservations

  def meals_remaining(date)
    # reservation.each do |r|
    #   party_size
    # end

    # capcity
    # party_size

    # for a given day:
    # remaining = capcity - what has been booked
    # what has been booked = sum party sizes of all reservations


    # a little more detail
    # for a given restaurant and a given date
    # get me the list of reservations corresponding

    # self.reservations
    # SELECT * FROM reservations WHERE restaurant_id = 1

    # we have a list of reservations for the restaurant,
    # but we need to filter down to the current date

      meals_taken = 0
      current_reservations = reservations.where("date = ?", date)
      current_reservations.each do |r|
        meals_taken = meals_taken + r.party_size
      end

      total = capcity - meals_taken
  end

end
