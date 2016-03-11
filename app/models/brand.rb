class Brand 
  include Neo4j::ActiveNode

  has_many :in, :products , rel_class: :MadeBy, model_class: :Product

  property :name, type: String
  property :image_url, type: String

  validates :name, :image_url, presence: true
  validates :name, uniqueness: true
  validates :image_url, allow_blank: true, format: {
      with: %r{\.(gif|jpg|png|jpeg)\Z}i,
      message: 'must be a URL for GIF, JPG or PNG image.'
  }

end
