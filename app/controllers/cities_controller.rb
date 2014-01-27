class CitiesController < ApplicationController
  before_action :find_city, only: [:edit, :show, :update, :destroy]

  def index
    @cities = City.all       
  end
  
  def new
    @city = City.new
  end
  def create
    city = City.new(city_params)
    city.save
    redirect_to cities_path
  end
  def show
    @business = Business.new
  end
  def edit
  end
  def update
    if @city.update_attributes(city_params)
      redirect_to @city, notice: "City updated successfully"
    else
      render :edit
    end
  end

  def destroy
    if @city.destroy
      redirect_to cities_path, notice: "city deleted successfully"
    else
      redirect_to cities_path, alert: "Problem deleting city"
    end
  end

  private

  def city_params
    params.require(:city).permit([:name])
  end

  def find_city
    @city = City.find(params[:id])
  end
end
