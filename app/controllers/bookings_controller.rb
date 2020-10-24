class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @lesson = Lesson.find(params[:lesson_id])
    authorize @booking
  end

  def create
    @booking = Booking.new()
    authorize @booking
    @lesson = Lesson.find(params[:lesson_id])
    @user = current_user
    @booking.lesson = @lesson
    @booking.user = @user
    @booking.save
    redirect_to lessons_path
  end
end
