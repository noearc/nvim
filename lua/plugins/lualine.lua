return {
  "nvim-lualine/lualine.nvim",
  config = function()
    -- local function scstatus()
    --   if vim.bo.filetype == "supercollider" then
    --     local stat = vim.fn["scnvim#statusline#server_status"]()
    --     local stat1 = stat:gsub("%%", "♪")
    --     return stat1
    --   else
    --     return ""
    --   end
    -- end
    require("lualine").setup({
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { "filename", "require'lsp-status'.status()" },
        -- lualine_x = { "filetype", "Zh_count", scstatus },
        lualine_x = { "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
      options = {
        section_separators = { left = "", right = "" },
        component_separators = { left = "", right = "" },
        theme = "auto",
      },
    })
  end,
}
