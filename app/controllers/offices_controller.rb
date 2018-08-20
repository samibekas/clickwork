class OfficesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @offices = Office.all
  end

  def show
    @office = Office.find(params[:id])
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

  private

  def office_params
    params.require(:office).permit(:descritpion, :capacity_max, :user_id, :address)
  end
end

