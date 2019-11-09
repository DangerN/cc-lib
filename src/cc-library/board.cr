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
      self.archive_last_thread unless @threads.size < @thread_limit
      @threads << Thread.new(id: id.to_u32, posts: [post])
    end

    def self.all
      @@all
    end

    def archive_last_thread
      puts "archivings #{@threads.last}"
    end
  end
end
