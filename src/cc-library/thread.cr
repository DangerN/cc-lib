module CC
  # Belongs to a single `Board` and contains many `Post`s.
  class Thread
    property flags, post_limit, posts
    getter id
    @@all = [] of self

    def initialize(@id : UInt32, @flags = [] of Symbol, @post_limit = UInt16.new(350), @posts = [] of Post)
      @@all << self
    end

    def self.all
      @@all
    end
  end
end
