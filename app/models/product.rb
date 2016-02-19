class Product 
  include Neo4j::ActiveNode

  has_many :in, :Cartcontainers, rel_class: :Contain, model_class: :Cart
  has_many :in, :Ordercontainers, rel_class: :Contain, model_class: :Order

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
  validates :title, length: {minimum: 10}
end


