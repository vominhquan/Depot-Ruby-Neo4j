module CurrentCart
  extend Neo4j::ActiveNode::Labels
  private

    def create_cart
      @cart = Cart.find(session[:cart_id])
    rescue Neo4j::RecordNotFound
      @cart = Cart.create
      session[:cart_id] = @cart.id
    end
end
