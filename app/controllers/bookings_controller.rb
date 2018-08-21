class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @office = Office.find(params[:office_id])
    @booking = Booking.new
    @booking.user = current_user
    @booking.desk =  @office.desks.first
    authorize @booking
    if params[:number_of_desks].to_i <= @office.capacity_max
      @booking.save!
      @office.update(capacity_max: @office.capacity_max - params[:number_of_desks].to_i)
      @desks = @office.desks.where(available: true).take(params[:number_of_desks].to_i)
      @desks.each do |desk|
        desk.update(available: false)
      end
      redirect_to office_path(@office)
    else
      flash[:alert] = "Frero, y a pas autant de place..."
      redirect_to office_path(@office)
    end

  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :desk_id)
  end
end
