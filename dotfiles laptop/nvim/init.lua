--agradecimientos a albus y a silvan franklin por ser la única persona en hacer un video sobre nvim actualizado!!
--
--parametros por defecto
--
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.swapfile = false
vim.g.mapleader = " "
vim.o.wrap = false
vim.o.signcolumn = "no"
vim.o.winborder = "rounded"
--vim.cmd("colorscheme vague") --tema
vim.cmd(":hi statusline guibg=NONE")
--keymaps
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>o', ':source<CR>')
vim.keymap.set({ "n", "x" }, "<leader>y", [["+y]]) -- copy to system clipboard


--paquetes
vim.pack.add({
    {src = "https://github.com/neovim/nvim-lsp"},
	{src = "https://github.com/neovim/nvim-lspconfig"},
	{src = "https://github.com/stevearc/oil.nvim"},
	{src = "https://github.com/hrsh7th/nvim-cmp"},
	{src = "https://github.com/hrsh7th/cmp-buffer"},
	{src = "https://github.com/hrsh7th/cmp-nvim-lsp"},
	{src = "https://github.com/ibhagwan/smartyank.nvim"}
})

require "oil".setup()
require "smartyank".setup()
--require "cmp".setup()
vim.lsp.enable({"clangd", "pylsp", "pyright" })

--

local cmp = require("cmp")
local cmp_buffer = require('cmp_buffer')

cmp.setup({
  sources = {
    { name = "buffer" },  -- Complete words from current buffer
	{ name = "nvim_lsp" },
  },
  mapping = {
    ["<Tab>"] = cmp.mapping.confirm({ select = true }),  -- Accept completion
  }
})

