class Product 
  include Neo4j::ActiveNode

  has_many :in, :Cartcontainers, rel_class: :Contain, model_class: :Cart
  has_many :in, :Ordercontainers, rel_class: :Contain, model_class: :Order
  has_one :out, :brand, rel_class: :MadeBy, model_class: :Brand

  property :title, type: String
  property :description, type: String
  property :image_url, type: String
  property :price, type: BigDecimal

  validates :title, :description, :image_url, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: {
  	with: %r{\.(gif|jpg|png)\Z}i,
  	message: 'must be a URL for GIF, JPG or PNG image.'
  	}

  def self.rec(uuid)
    @rec_products = Neo4j::Session.query("match (c:Cart)-->(p1:Product)<--(o:Order)-->(p2:Product)
                      with count(p1) as num, collect(p1) as commons, c, o, p2
                      where not(c-->p2) and c.uuid = {cuuid}
                      return p2",{cuuid: uuid}).first
    puts '-----------------------this is what inside @rec_products---------------'
    puts @rec_products
    puts '-----------------------end model product---------------'
    return @rec_products
  end
end


