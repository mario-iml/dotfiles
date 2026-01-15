-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--
lvim.plugins = {
  {
    'chomosuke/typst-preview.nvim',
    ft = 'typst',
    version = '1.*',
    opts = {
      dependencies_bin = { ['tinymist'] = 'tinymist' }
    },
  },
  {
    "barreiroleo/ltex_extra.nvim",
    ft = { "markdown", "tex" },
    dependencies = { "neovim/nvim-lspconfig" },
    opts = { }
  },
  {
    "supermaven-inc/supermaven-nvim",
    opts = {},
  },
}

lvim.builtin.which_key.mappings["t"] = {
  name = "Typst",
  -- Syntax: { "Command", "Label" }
  p = { "<cmd>TypstPreview<CR>", "Preview" },
  s = { "<cmd>TypstPreviewStop<CR>", "Stop Preview" },
}

------------------------------ ltex --------------------------------
-- 1. Ensure the server is installed automatically
table.insert(lvim.lsp.installer.setup.ensure_installed, "ltex")

-- 2. Setup the server
-- This forces LunarVim to attach ltex to the specified filetypes
require("lvim.lsp.manager").setup("ltex", {
  filetypes = { "markdown", "tex", "bib", "plaintex", "typst" },
  settings = {
    ltex = {
      enabled = { "latex", "tex", "bib", "markdown", "typst" },
      language = "en-US", -- Change to "en-GB", "de-DE", etc. as needed
      checkFrequency = "edit", -- "edit" is default but can be resource heavy
    },
  },
})

-- bugfix hyprland config treesitter indent errpor
lvim.builtin.indentlines.options.use_treesitter = false

lvim.builtin.cmp.mapping["<Tab>"] = nil
lvim.builtin.cmp.mapping["<S-Tab>"] = nil
