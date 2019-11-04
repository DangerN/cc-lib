require "./cc-library/*"

# TODO: Write documentation for `CC::Library`
module CC
  VERSION = "0.1.0"

  # TODO: define method to add a post that takes at least the argument of a board


end

post = CC::Post.new(id: 12312312414)
post2 = CC::Post.new(id: 12312323414, options: {badges: ["fuck","butts"], ham: "boning", yeet: "benis"})

board = CC::Board.new(id: :fit, options: {thread_limit: 20})
board2 = CC::Board.new(id: :pol, options: {thread_limit: 20})

board.add_thread(thread_id: 15, options: {badges: ["wut"]})

25.times do |i|
  board.add_thread(thread_id: i, options: {badges: ["wut"]})
end
