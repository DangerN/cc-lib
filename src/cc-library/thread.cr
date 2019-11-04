module CC
  # Belongs to a single `Board` and contains many `Post`s.
  class Thread < Base
    property flags = [] of Symbol, limit : Int16 = 350, posts = [] of Post
    ALLOWED_OPTIONS = [:badges, :text, :media_link]

    def handle_options(options)
      return unless options.size > 0
    end

    # TODO: add functionality
    def add_post(post_hash)

    end
  end
end
