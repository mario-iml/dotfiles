return {
  {
    'michaelrommel/nvim-silicon',
    lazy = true,
    cmd = 'Silicon',
    init = function()
      local wk = require 'which-key'
      wk.register({
        ['sc'] = { ':Silicon<Enter>', '[S]creenshot [C]ode' },
      }, { mode = 'v' })
    end,
    config = function()
      require('silicon').setup {
        -- Configuration here, or leave empty to use defaults
        font = 'JetBrainsMono Nerd Font=34;Noto Emoji=34',
        theme = 'gruvbox-dark',
        background = nil,
        pad_horiz = 100,
        pad_vert = 80,
        to_clipboard = true,
        window_title = function()
          return vim.fn.fnamemodify(vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()), ':t')
        end,
      }
    end,
  },
}
