module CC
  # Represents a single board, represents a collection of similar `Post`s and `Thread`s.
  class Board
    getter id, name
    property flags, thread_limit, threads
    @@all = [] of Board

    def initialize(@id : Symbol, @flags = [] of Symbol, @threads = [] of Thread, @thread_limit = UInt8.new(20), @name = String)
      @@all << self
    end

    # DEPRECIATED: dunt use
    def new_thread(id, post)
      self.archive_last_thread unless @threads.size < @thread_limit
      @threads << Thread.new(id: id.to_u32, posts: [post])
    end

    def create_thread(**thread_options)
      puts thread_options
    end

    def wat
      puts "wat"
    end

    def archive_last_thread
      puts "archivings #{@threads.last}"
    end

    def self.get_by_id(id)
      puts "im tring to find a board"
      thing = @@all.find do |board|
        puts typeof(board)
        board.id == id
      end
      raise "invalid board id" unless !thing.nil?
      thing
    end

    def self.all
      @@all
    end

  end
end
