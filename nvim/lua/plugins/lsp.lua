return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tsserver = {}, -- laisse LazyVim/Mason gérer l'installation
      },
    },
  },
}
