class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    authorize @booking
  end
end
