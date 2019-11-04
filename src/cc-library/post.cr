require "./base.cr"

module CC
  # Belongs to a single `Thread` and `Board`.
  # :nodoc: # TODO: handle options with a macro.
  class Post < Base

    # TODO: Convert all implementations to use Symbols for flags and badges
    property badges = [] of String, text = String, media_link = String
    ALLOWED_OPTIONS = {badges: [] of String, text: String, media_link: String}

    def handle_options(options)
      {% for option, option_type in ALLOWED_OPTIONS %}
        @{{option.id}} = {{option_type}}
      {% end %}
    end
  end
end
