require "json"

module CC
  # Belongs to a single `Board` and contains many `Post`s.
  class Thread
    include JSON::Serializable
    property id : UInt32
    property flags = [] of String
    property post_limit : UInt16 = 350
    property posts = [] of CC::Post
    
  end
end
