class OfficesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_office, only: [:show, :update, :destroy]

  def index
    @offices = Office.all
  end

  def index_current_user
    @offices = Office.where(user_id: current_user.id)
  end

  def show

  end

  def new
    @office = Office.new
  end

  def create
    @office = Office.new(office_params)
    @office.user = current_user
    if @office.save
      redirect_to office_path(@office)
    else
      render :new
    end
  end

  def edit
    @offices = Office.where(user_id: current_user.id)
    @office = @offices.find(params[:id])
  end

  def update
    @office.update(office_params)
    redirect_to myoffices_path
  end

  def destroy
    @offices = Office.where(user_id: current_user.id)
    @office = @offices.find(params[:id])
    @office.delete
    if @offices.empty?
      redirect_to offices_path
    else 
      redirect_to myoffices_path
    end
  end

  private

   def set_office
    @office = Office.find(params[:id])
  end

  def office_params
    params.require(:office).permit(:descritpion, :capacity_max, :user_id, :address, :name)
  end
end

