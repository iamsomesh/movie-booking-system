class BookingMailer < ApplicationMailer
  default from: 'movieticket@example.com'

  def booking_confirmation
    @booking = params[:booking]
    @user = @booking.user
    @showtime = @booking.showtime
    @movie = @showtime.movie

    mail(to: @user.email, subject: 'Your Movie Ticket Confirmation')
  end
end
