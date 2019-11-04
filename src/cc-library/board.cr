module CC
  # Represents a single board, represents a collection of similar `Post`s and `Thread`s.
  class Board < Base
    property flags = [] of Symbol, thread_limit : Int8 = 20, threads = [] of Thread
    ALLOWED_OPTIONS = {flags: [] of Symbol, thread_limit: 20, threads: [] of Thread}

    def handle_options(options)
      {% for option, option_type in ALLOWED_OPTIONS %}
        @{{option.id}} = {{option_type}}
      {% end %}
    end
    #
    # Adds a thread to the board with at least one post. Posts here should be an array of `Hash` representing Posts.
    # See `Post` for valid initializations.
    def add_thread(thread_id, posts, options = {} of Symbol => String | Symbol)
      archive_last_thread unless threads.size < thread_limit
      new_thread_posts = posts.map do |post|
        Post.new(id: post.id)
      end
      @threads << Thread.new(id: thread_id, posts: new_thread_posts, options: options)
    end
    #
    # TODO: Remove this
    # :nodoc: This overload was used in early development. Do not use it.
    def add_thread(thread_id, options = {} of Symbol => String | Symbol)
      archive_last_thread unless threads.size < thread_limit
      @threads << Thread.new(id: thread_id options: options)
    end

    # Returns board by id
    def self.get_board(board_id : Symbol)
      @@all.find { |board| board.id == board_id}
    end

    # TODO: write a test that asserts that this removes the last thread from `@threads`.
    # TODO: implement archive behavior
    private def archive_last_thread
      archived_thread = @threads.last
      archived_thread.flags << :archived
      puts "#{archived_thread}" + " has been 'archived'."
    end
  end
end
