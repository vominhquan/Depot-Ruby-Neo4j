module CurrentCart
  extend Neo4j::ActiveNode::Labels
  private

  def create_cart
    @cart = Cart.find(session[:cart_id])
  rescue Neo4j::RecordNotFound
    @cart = Cart.create
    session[:cart_id] = @cart.id
  end

  def recc
    @rec_products = Product.rec(@cart.uuid)
    puts '----------------inside current_cart-------------------------------'
    puts @cart.products.to_a
    puts @cart.uuid
    puts @rec_products
    puts '----------------end current_cart-------------------------------'
  end
end
