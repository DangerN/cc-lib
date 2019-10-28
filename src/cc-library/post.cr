module CC
  # Belongs to a single `Thread` and `Board`.
  class Post
    getter id : Int64, thread_id : Int32
    property badges = [] of String, text = String, media_link = String

    # A post requires an id and a thread_id
    def initialize(thread_id, id)
      @id, @thread_id = id, thread_id
    end

    def initialize(thread_id, id, **options)
      @id, @thread_id = id, thread_id
    end
  end
end
