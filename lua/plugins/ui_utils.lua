return {
  {
    "nvimdev/hlsearch.nvim",
    event = "BufRead",
    config = function()
      require("hlsearch").setup()
    end,
  },
  { "David-Kunz/markid", event = "BufRead" },
  {
    "aserowy/tmux.nvim",
    config = function()
      require("tmux").setup()
    end,
  },
  {
    "mbbill/fencview",
  },
}
