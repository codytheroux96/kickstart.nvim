-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    "fatih/vim-go",
    ft = "go",
    config = function()
      -- Disable vim-go features that are replaced by LSP
      vim.g.go_def_mapping_enabled = 0
      vim.g.go_code_completion_enabled = 0
    end
  },
  {
    "windwp/nvim-autopairs",
    config = function()
      require('nvim-autopairs').setup{}
    end
  },
  {
    "abecodes/tabout.nvim",
    config = function()
      require('tabout').setup {
        tabkey = '<Tab>', -- Key to trigger tabout
        backwards_tabkey = '<S-Tab>', -- Key to go backwards
        act_as_tab = true, -- Enables the function of a normal tab in places where no pairs are found
        enable_backwards = true, -- Allows backward navigation
        completion = false, -- No interference with completion
        ignore_beginning = false, -- Don't ignore the start of pairs
        use_treesitter = true, -- Use treesitter to check for pairs
        check_ts = true, -- Ensures compatibility with nvim-treesitter
      }
    end,
    wants = { "nvim-treesitter" }, -- Ensures nvim-treesitter is loaded first
    after = { "nvim-treesitter", "nvim-autopairs" }, -- Ensures correct load order
  }
}