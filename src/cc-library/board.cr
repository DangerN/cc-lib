module CC
  # Represents a single board, represents a collection of similar `Post`s and `Thread`s.
  class Board
    getter id
    property flags, thread_limit, threads
    @@all = [] of self

    def initialize(@id : Symbol, @flags = [] of Symbol, @threads = [] of Thread, @thread_limit = UInt8.new(20))
      @@all << self
    end

    def new_thread(id, post)
      @threads << Thread.new(id: id.to_u32, posts[post])
    end

    def self.all
      @@all
    end
  end
end
