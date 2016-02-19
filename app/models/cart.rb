class Cart 
  include Neo4j::ActiveNode
  include CurrentCart

  has_many :out, :products , model_class: :Product, rel_class: :Contain

  property :total_price, type: BigDecimal

  def sum_price
    @total_price = 0
    products(:node, :rel).each_with_rel do |node, rel|
      @total_price += rel[:quantity]*node.price
    end
    @total_price
  end


end
