module CC
  # Belongs to a single `Thread` and `Board`.
  class Post
    getter id
    property badges, text, media_link
    @@all = [] of self

    def initialize(@id : UInt64, @badges = [] of String, text = "", @media_link = "")
      @@all << self
    end

    def self.all
      @@all
    end
  end
end
