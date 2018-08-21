class OfficesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_office, only: [:show, :edit, :update, :destroy]

  def index
    @offices = policy_scope(Office).order(created_at: :desc)
  end

  def myoffices
    @offices = policy_scope(Office.where(user_id: current_user.id)).order(created_at: :desc)
    authorize @offices
  end

  def show
    authorize @office
    @review = Review.new
    @reviews = Review.where(office_id: @office.id)
  end

  def new
    @office = Office.new
    @review = Review.new
    authorize @office
  end

  def create
    @office = Office.new(office_params)
    @office.user = current_user
    authorize @office
    if @office.save
      redirect_to office_path(@office)
    else
      render :new
    end
  end

  def edit
    # @offices = Office.where(user_id: current_user.id)
    # @office = @offices.find(params[:id])
    authorize @office
  end

  def update
    authorize @office
    @office.update(office_params)
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

  private

   def set_office
    @office = Office.find(params[:id])
  end

  def office_params
    params.require(:office).permit(:description, :capacity_max, :user_id, :address, :name, :photo)
  end
end

