require'nvim-treesitter.configs'.setup {
  ensure_installed = { "cpp", "python", "c", "lua", "vim", "vimdoc", "query",
  },

  sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,
  },
}
