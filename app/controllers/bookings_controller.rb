class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_booking, only: [:show, :edit, :update, :destroy, :confirm, :reject, :cancel]

  def index
    @bookings_user = policy_scope(Booking.where(user_id: current_user)).order(dates: :desc)

    current_user_offices = Office.where(user_id: current_user)

    @bookings_owner = policy_scope(Booking.where(office_id: current_user_offices)).order(created_at: :desc)

    authorize @bookings_user
    authorize @bookings_owner
  end

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
    # if params[:booking][:dates].nil?
    #   redirect_to office_path(@office)
    #   flash[:alert] = "Please specify a date"
    # end
    @office = Office.find(params[:office_id])
    authorize @office

    if current_user == @office.user
      redirect_to office_path(@office)
      flash[:alert] = "You can't book your own place"
    else
      dates_string = params[:booking][:dates]
      dates = dates_string.split(', ')


      dates.each do |date|
        @booking = Booking.new()
        @booking.user = current_user
        @booking.dates = date
        @booking.office_id = @office.id
        @booking.status = "Pending"
        authorize @booking
        @booking.save
        flash[:notice] = "Booking confirmed!"
          # redirect_to office_path(@office)
          # flash[:alert] = "Not enough desks availables"
      end
      redirect_to office_path(@office)
    end
  end

  def confirm
    authorize @booking
    @booking.status = "Confirmed"
    @booking.save
    redirect_to bookings_path
  end

  def reject
    authorize @booking
    @booking.status = "Rejected"
    @booking.save
    redirect_to bookings_path
  end

  def cancel
    authorize @booking
    @booking.status = "Canceled"
    @booking.save
    redirect_to bookings_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :desk_id)
  end
end
