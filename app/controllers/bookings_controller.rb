class BookingsController < ApplicationController
  before_action :authenticate_user!

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @subscription.booking = @subscription
    @course.booking = @course
    @booking.user = current_user
    @booking.save
    redirect_to dashboard_path
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :total_price)
  end
end
