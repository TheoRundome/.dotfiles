
-- Sets up lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

    { -- Color theme
    "ellisonleao/gruvbox.nvim",
    config = function()
        vim.o.background = "dark" -- or "light" for light mode
        vim.cmd([[colorscheme gruvbox]])
    end,
    },

    { -- Transparent Background
    "xiyaowong/transparent.nvim"},

    { -- Set lualine as statusline
    "nvim-lualine/lualine.nvim",
    opts = 
    {
      options = 
      {
        icons_enabled = true,
        theme = "gruvbox",
        component_separators = "|",
        section_separators = "",
      },
     },
    },

    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("nvim-treesitter.configs").setup({
                esure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "query", "python" },

                auto_install = true,

                highlight = {
                    enable = true,
                },
            })
        end,
    },
    {
        "nvim-neorg/neorg",
        build = ":Neorg sync-parsers",
        -- tag = "*",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
          require("neorg").setup {
            load = {
              ["core.defaults"] = {}, -- Loads default behaviour
              ["core.concealer"] = {}, -- Adds pretty icons to your documents
              ["core.dirman"] = { -- Manages Neorg workspaces
                config = {
                  workspaces = {
                    notes = "~/notes",
                  },
                },
              },
            },
          }
        end,
      },

    
})
