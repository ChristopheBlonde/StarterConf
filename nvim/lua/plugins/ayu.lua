return {
  {
    "ayu-theme/ayu-vim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.o.termguicolors = true         -- active les vraies couleurs
      vim.o.background = "dark"          -- ou "light" ou "mirage"
      vim.cmd("colorscheme ayu")
    end,
  },
}
