class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[ show edit update destroy ]

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurants_path
  end

  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurants_path
  end


  def show
    # affiche le restaurant selectionne avec method set_restaurant qui
    # correspond au bon record + ses reviews
    # la methode set_restaurant est lancé automatiquement au debut du
    # controller
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end



  private
  # Use callbacks to share common setup or constraints between actions.
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

end
