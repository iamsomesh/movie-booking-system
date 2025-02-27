# frozen_string_literal: true

class BookingsController < ApplicationController
  load_and_authorize_resource

  def index
    @bookings = @bookings.includes(showtime: :movie).order('showtimes.start_time')
  end

  def show; end

  def new
    @showtime = Showtime.find(params[:showtime_id])
    @booking = Booking.new(showtime: @showtime)
  end

  def create
    @booking = current_user.bookings.new(booking_params)
    @showtime = @booking.showtime

    if @showtime.seats_available.positive?
      @booking.seat_number = @showtime.next_available_seat
      if @booking.save
        @showtime.decrement!(:seats_available)
        BookingMailer.with(booking: @booking).booking_confirmation.deliver_later
        redirect_to @booking, notice: 'Successfully Booked. A confirmation email has been sent.'
      else
        render :new
      end
    else
      redirect_to movies_path, alert: 'Sorry, this showtime is fully booked.'
    end
  end

  def destroy
    @showtime = @booking.showtime
    @showtime.increment!(:seats_available)
    @booking.destroy
    redirect_to bookings_path, notice: 'Booking was successfully cancelled.'
  end

  private

  def booking_params
    params.require(:booking).permit(:showtime_id)
  end
end
