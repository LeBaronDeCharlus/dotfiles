return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function()
      require("lsp_signature").setup()
    end,
  },
  "kdheepak/lazygit.nvim",
  -- "projekt0n/github-nvim-theme",
  -- -- Install without configuration
  -- 'projekt0n/github-nvim-theme',
  -- lazy = false,    -- make sure we load this during startup if it is your main colorscheme
  -- priority = 1000, -- make sure to load this before all the other start plugins
  -- config = function()
  --   require('github-theme').setup({
  --     -- ...
  --   })
  --   vim.cmd('colorscheme github_dark')
  -- end,
  "nvim-tree/nvim-web-devicons",
  {
    "eddyekofo94/gruvbox-flat.nvim",
    config = function()
      vim.o.background = "dark"
      vim.g.gruvbox_flat_style = "hard"
    end,
  },
  "simrat39/rust-tools.nvim", -- add lsp plugin
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "rust_analyzer" },
    },
  },
}
