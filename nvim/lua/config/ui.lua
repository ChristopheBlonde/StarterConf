-- Rounded borders for LSP
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" })
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" })

-- Highlight floating borders (LSP, Telescope, etc.)
vim.cmd([[
  highlight FloatBorder guifg=#ffcc66 guibg=#0f1419
  highlight NormalFloat guibg=#0f1419
  highlight TelescopeBorder guifg=#ffcc66
]])

-- Optional: rounded UI for Telescope
local ok, telescope = pcall(require, "telescope")
if ok then
  telescope.setup({
    defaults = {
      borderchars = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
      layout_config = {
        prompt_position = "top",
      },
      sorting_strategy = "ascending",
      winblend = 0,
    },
  })
end

-- Set default border style for all LSP floating windows
vim.diagnostic.config({
  float = {
    border = "rounded",
  },
})

local border = "rounded"

require("lspconfig").pyright.setup({
  on_attach = function(_, bufnr)
    -- You can define keymaps here too if you want
  end,
  handlers = {
    ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = border }),
    ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = border }),
  },
})
