return {
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true,
    opts = {
      chars = { '{', '[', '(', '"', "'", "<" },
    }
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
  },
}
