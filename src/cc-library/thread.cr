module CC
  # Belongs to a single `Board` and contains many `Post`s.
  class Thread
    getter id : Int32, board_id : Symbol
    property flags = [] of Symbol, limit : Int16 = 350, archived = false, posts = [] of Post

    def initialize(id, board_id)
      @id, @board_id = id, board_id
    end

    def add_post(post_hash)

    end
  end
end
