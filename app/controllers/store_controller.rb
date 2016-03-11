class StoreController < ApplicationController
  include CurrentCart

  before_action :create_cart, :recc
  skip_before_action :authorize

  def index
  	@products = Product.all
  end

end
