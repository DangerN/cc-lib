require "./cc-lib/*"
require "http/web_socket"
require "json"

# TODO: Write documentation for `CC::Library`
module CC
  VERSION = "0.2.2"
  @@boards = [] of Board
  @@subscriptions = {} of String => Array(HTTP::WebSocket)
  @@sockets = [] of HTTP::WebSocket

  def self.subscriptions
    @@subscriptions
  end

  def self.sockets
    @@sockets
  end

  def self.boards
    @@boards
  end

  # Takes a JSON object representing a `Board`
  def self.initialize_board_from_json(board)
    @@boards << Board.from_json(board)
  end

  def self.board_by_id(board_id)
    board = @@boards.find { |board| board.id == board_id }
    board.not_nil!
  end


end


# CC.initialize_dummy_boards
