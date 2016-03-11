class MadeBy
  include Neo4j::ActiveRel

  from_class :Product
  to_class :Brand
  type :MADE_BY

end