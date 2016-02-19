class Order 
  include Neo4j::ActiveNode

  has_many :out, :products , model_class: :Product, rel_class: :Contain

  property :name, type: String
  property :address, type: String
  property :email, type: String
  property :pay_type, type: String

  PAYMENT_TYPES = ["Check", "Credit card", "Purchase order"]

  validates :name, :address, :email, presence: true
  validates :pay_type, inclusion: PAYMENT_TYPES

end
