require "./cc-library/*"
require "json"

# TODO: Write documentation for `CC::Library`
module CC
  VERSION = "0.1.0"

  # TODO: define method to add a post that takes at least the argument of a board


end

fit = CC::Board.new(id: :fit, flags: [:potato], thread_limit: 30.to_u8)
pol = CC::Board.new(id: :pol)

fit.new_thread(id: 427854435)
puts fit.threads
