class OfficesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_office, only: [:show, :edit, :update, :destroy, :booking_available?]

  def index
    @offices = policy_scope(Office).order(created_at: :desc)
    @offices_address = Office.where.not(latitude: nil, longitude: nil)

    if params[:office].present?
      sql_query = "city ILIKE ? AND category ILIKE ?"
      @offices_address = Office.where(sql_query, "%#{params[:office]["where"]}%", "%#{params[:office]["category"]}%" )
    end

    @markers = @offices_address.map do |office|
      {
        lat: office.latitude,
        lng: office.longitude,
        infoWindow: { content: render_to_string(partial: "/offices/infowindow", locals: { office: office }) }
      }
    end
  end

  def myoffices
    @offices = policy_scope(Office.where(user_id: current_user.id)).order(created_at: :desc)
    authorize @offices
  end

  def show
    @booking = Booking.new
    authorize @office
    @review = Review.new
    @reviews = Review.where(office_id: @office.id)
    average_rating
    return_array_of_unavailable_dates

    @markers =
      [{
        lat: @office.latitude,
        lng: @office.longitude,
      }]
  end

  def new
    @office = Office.new
    @review = Review.new
    # @desk = Desk.new
    # @desk.office = @office
    authorize @office
  end

  def create
    @office = Office.new(office_params)
    @office.user = current_user
    authorize @office
    if @office.save
      @office.facilities << Facility.find(params["office"]["facility_ids"])
      # @office.capacity_max.times do
      #   desk = Desk.new(
      #     office_id: @office.id,
      #     price: params[:price_per_desk]
      #   )
        # desk.save!
      redirect_to office_path(@office)
    else
      render :new
    end
  end

  def edit
    authorize @office
    # @desk = Desk.new
    # @desk.office = @office
  end

  def update
    authorize @office

    @old_office = @office.capacity_max

    @office.update(office_params)
      # if @old_office > @office.capacity_max
      #   number_of_desks = @old_office - @office.capacity_max
      #   @office.desks.where(available: true).take(number_of_desks).each(&:destroy)
      # else
      #   number_of_desks = @office.capacity_max - @old_office
      #   number_of_desks.times do
      #     desk = Desk.new(
      #       office_id: @office.id,
      #       price: params[:price_per_desk]
      #     )
      #     desk.save!
      #   end
      # end
      # @office.desks.each do |desk|
      #   desk.update(price: params[:price_per_desk])
      # end
      redirect_to myoffices_offices_path
  end

  def destroy
    authorize @office
    @office.delete
    if current_user.offices.empty?
      redirect_to offices_path
    else
      redirect_to myoffices_offices_path
    end
  end

  def return_array_of_unavailable_dates
    now = Date.today
    date_range = (now..now>>6).map{ |date| date.strftime("%Y-%m-%d") }
    @notavailable = date_range.select{ |date| booking_unavailable?(date)}
  end

  def booking_unavailable?(date)
    @office.capacity_max <= Booking.where(dates: date, office_id: params[:office_id]).count
  end

  private

   def average_rating
    sum_ratings = 0
    @reviews.each do |review|
      sum_ratings += review.rating
    end
    if @reviews.count == 0
      @average = 0
    else
      @average = (sum_ratings) / (@reviews.count)
    end
  end

  def set_office
    @office = Office.find(params[:id])
  end

  def office_params
    params.require(:office).permit(:description, :capacity_max, :user_id, :address, :zipcode, :city, :country ,:name, :photo, :category, :facilities)
  end

end

