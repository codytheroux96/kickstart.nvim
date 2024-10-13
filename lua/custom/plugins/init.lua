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
    }
}