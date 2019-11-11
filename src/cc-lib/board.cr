require "json"

module CC
  # Represents a single board, represents a collection of similar `Post`s and `Thread`s.
  class Board
    include JSON::Serializable
    property id : String
    property name : String
    property flags = [] of String
    property thread_limit : UInt8 = 25
    property threads = [] of CC::Thread
    
  end
end
