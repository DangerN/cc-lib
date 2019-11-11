module CC
  # Belongs to a single `Board` and contains many `Post`s.
  class Thread
    property flags, post_limit, posts
    getter id
    @@all = [] of self

    def initialize(@id : UInt32, @flags = [] of Symbol, @post_limit = UInt16.new(350), @posts = [] of Post)
      raise "threads must start with a post" unless @posts.size > 0
      @@all << self
    end

    def self.all
      @@all
    end

    def new_post(args_name)

    end
  end
end
