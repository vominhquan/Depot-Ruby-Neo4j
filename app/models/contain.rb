class Contain
    include Neo4j::ActiveRel

    from_class :any
    to_class :Product
    type :Contain

    property :quantity, type: Integer

end