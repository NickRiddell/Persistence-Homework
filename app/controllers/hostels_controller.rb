class HostelsController < ApplicationController
  def index
    @hostels = Hostel.all.order(visited: :asc)
  end

  def new
    @hostel = Hostel.new
  end

  def create
    Hostel.create(hostel_params)
    redirect_to(hostels_path)
  end

  def show
    @hostel = Hostel.find(params[:id])
  end

  def destroy
    hostel = Hostel.find(params[:id])
    hostel.destroy
    redirect_to( hostels_path )
  end

  def edit
    @hostel = Hostel.find(params[:id])
  end

  def update
    hostel = Hostel.find(params[:id])
    hostel.update(hostel_params)
    redirect_to(hostels_path)
  end


  private
  def hostel_params
    params.require(:hostel).permit(:name, :image, :country, :city, :visited, :rating)
  end
end