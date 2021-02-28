class RestaurantsController < ApplicationController
    skip_before_action :authorized

    def index
        restaurants = Restaurant.all
        render json: restaurants
    end
end
