class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
    @posts = @city.posts.order("created_at DESC")
  end

  def new
    @city = City.new
  end

  def create
    @city = City.new(city_params)

    @city.save
    redirect_to @city
  end
  
  private
  def city_params
    params.require(:city).permit(:city_name, :photo_url)
  end
end
