class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def new
    @booking = Booking.new
    @books = []
    authorize @booking
    # availability = 1
    # number_of_other_bookings_same_date = Booking.where(start_at: date).count
    # availability *= 0 unless number_of_other_bookings_same_date < @office.capacity_max
    # if availability == 1
  end

  def create
    if params[:booking][:dates].nil?
      redirect_to office_path(@office)
      flash[:alert] = "Please specify a date"
    end
    dates_string = params[:booking][:dates]
    dates = dates_string.split(', ')

    @office = Office.find(params[:office_id])

    dates.each do |date|
      @booking = Booking.new()
      @booking.user = current_user
      @booking.dates = date
      authorize @booking
      @booking.save
      flash[:notice] = "Booking confirmed!"
        # redirect_to office_path(@office)
        # flash[:alert] = "Not enough desks availables"
    end
    redirect_to office_path(@office)
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :desk_id)
  end
end
