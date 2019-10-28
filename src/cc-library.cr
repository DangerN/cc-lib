require "./cc-library/*"

# TODO: Write documentation for `CC::Library`
module CC
  VERSION = "0.1.0"

end

post = CC::Post.new(id: 12312312414, thread_id: 456785)
post2 = CC::Post.new(id: 12312323414, thread_id: 4556785, ham: "boning", yeet: "benis")

board = CC::Board.new(id: :fit)
board2 = CC::Board.new(id: :pol)

board.add_thread(thread_id: 15)
