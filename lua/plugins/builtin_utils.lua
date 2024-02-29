return {
  -- better registers
  "junegunn/vim-peekaboo",
  -- better escape
  { "jdhao/better-escape.vim", event = "InsertEnter" },
  -- better undo
  "mbbill/undotree",
  -- better switch case
  {
    "johmsalas/text-case.nvim",
    config = function()
      require("textcase").setup({})
      require("telescope").load_extension("textcase")
      vim.api.nvim_set_keymap("n", "ga.", "<cmd>TextCaseOpenTelescope<CR>", { desc = "Telescope" })
      vim.api.nvim_set_keymap("v", "ga.", "<cmd>TextCaseOpenTelescope<CR>", { desc = "Telescope" })
    end,
  },
  -- better fold
  {
    "kevinhwang91/nvim-ufo",
    config = function()
      vim.o.foldcolumn = "1" -- '0' is not bad
      vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
      vim.o.foldlevelstart = 99
      vim.o.foldenable = true

      require("ufo").setup({
        provider_selector = function()
          return { "treesitter", "indent" }
        end,
      })
    end,
    dependencies = "kevinhwang91/promise-async",
  },
}
