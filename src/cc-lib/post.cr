module CC
  # Belongs to a single `Thread` and `Board`.
  class Post
    getter id
    property badges, text, media_link, flags
    @@all = [] of self

    def initialize(@id : UInt64, @badges = [] of Symbol, @text = "", @media_link = "", @flags = [] of Symbol)
      @@all << self
    end

    def self.all
      @@all
    end
  end
end
