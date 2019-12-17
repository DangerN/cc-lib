module CC
  # Belongs to a single `Thread` and `Board`.
  class Post
    include JSON::Serializable

    @[JSON::Field(key: "id")]
    property id : UInt64

    @[JSON::Field(key: "badges")]
    property badges = [] of String

    @[JSON::Field(key: "flags")]
    property flags = [] of String

    @[JSON::Field(key: "text")]
    property text : String = ""

    @[JSON::Field(key: "media_link")]
    property media_link : String = ""

    def initialize(@id : UInt64, @badges = [] of String, @flags = [] of String, @text = "", @media_link = "")

    end

  end
end
