return {
  {
    {
      'akinsho/toggleterm.nvim', 
      version = "*", 
      config = function ()
        require("toggleterm").setup{
          -- size can be a number or function which is passed the current terminal
          function(term)
            if term.direction == "horizontal" then
              return 15
            elseif term.direction == "vertical" then
              return vim.o.columns * 0.6
            end
          end,
          open_mapping = [[<c-t>]],
        }
      end
    }
  }
}
