require "./cc-lib/*"
require "json"

# TODO: Write documentation for `CC::Library`
module CC
  VERSION = "0.1.1"

  def self.initialize_boards
    BOARD_LIST.each do |board, options|
      puts options
      Board.new(id: board)
    end
  end

  def self.get_board(board_id)
    Board.get_by_id(board_id)
  end
end

CC.initialize_boards

ck = CC.get_board(:ck)
fit = CC.get_board(:fit)

th = fit.create_thread(id: 2534982)

puts th.posts
