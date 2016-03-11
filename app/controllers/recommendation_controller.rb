class RecommendationController < ApplicationController
  include CurrentCart

  # before_action :create_cart
  #
  # def index
  #   @rec_products = Product.rec(@cart.id)
  # end

end
