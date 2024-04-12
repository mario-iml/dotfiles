return {
  {
    'nosduco/remote-sshfs.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim' },
    config = function()
      require('remote-sshfs').setup({})
      require('telescope').load_extension 'remote-sshfs'

      local api = require('remote-sshfs.api')
      vim.keymap.set('n', '<leader>rc', api.connect, { desc = '[R]emote [C]onnect'})
      vim.keymap.set('n', '<leader>rd', api.disconnect, { desc = '[R]emote [D]isconnect'})
      vim.keymap.set('n', '<leader>re', api.edit, { desc = '[R]emote [Edit]' })

      local connections = require("remote-sshfs.connections")
      vim.keymap.set("n", "<leader>rf", function()
        if connections.is_connected then
          api.find_files()
        end
      end, { desc = '[R]emote [F]iles' })
      vim.keymap.set("n", "<leader>rg", function()
        if connections.is_connected then
          api.live_grep()
        end
      end,  { desc = '[R]emote [G]rep' })
    end
  }
}
