# frozen_string_literal: true

class Showtime < ApplicationRecord
  belongs_to :movie
  has_many :bookings

  def next_available_seat
    booked_seats = bookings.pluck(:seat_number)
    (1..seats_available).detect { |i| !booked_seats.include?(i) }
  end
end
