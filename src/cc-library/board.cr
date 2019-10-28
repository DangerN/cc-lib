module CC
  # Represents a single board, represents a collection of similar `Post`s and `Thread`s.
  class Board
    getter id : Symbol
    property flags, thread_limit : Int8 = 20, threads

    @@all = [] of self

    def initialize(id, flags = [] of Symbol, threads = [] of Thread)
      @id, @flags, @threads = id, flags, threads
      @@all << self
    end

    # Adds a thread to the board with at least one post. Posts here should be an array of Hashes representing Posts.
    # See `Post` for valid initializations.
    def add_thread(thread_id, posts)
      new_thread_posts = posts.map do |post|
        Post.new(id: post.id, thread_id: thread_id)
      end
      @threads << Thread.new(id: thread_id, board_id: self.id, posts: posts)
    end

    # Adds an empty thread to the board. For what purpose? Don't use this.
    def add_thread(thread_id)
      @threads << Thread.new(id: thread_id, board_id: self.id)
    end

    # Returns all boards.
    def self.all
      @@all
    end

    # Returns board by id
    def self.get_board(board_id : Symbol)
      @@all.find { |board| board.id == board_id}
    end
  end
end
