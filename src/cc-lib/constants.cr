# BOARD_LIST = [:fit, :ck, :gif, :wsg]
BOARD_LIST = {
  fit: {
    name: "Fitness",
    flags: [:sfw],
    threads: [] of Thread
  },
  ck: {
    name: "Cooking",
    flags: [:sfw],
    threads: [] of Thread
  },
  gif: {
    name: "Gifs",
    flags: [:nsfw],
    threads: [] of Thread
  },
  wsg: {
    name: "Work Safe Gifs",
    flags: [:sfw],
    threads: [] of Thread
  },
  }
