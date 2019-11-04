require "../../lib/object-send/src/object_send.cr"

module CC
  abstract class Base
    getter id
    property flags

    @@all = [] of self

    # TODO: check if string is needed as argument type
    # All classes inheriting from `Base` must have a `#handle_options` method defined.
    def initialize( @id : Int32 | Int64 | String | Symbol, options = {} of Symbol => String | Symbol)
      @@all << self
      self.handle_options(options) unless options.size == 0
    end

    def self.all
      @@all
    end
  end
end
