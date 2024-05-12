
vim.opt.number = true
vim.opt.hlsearch = true 
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.wrap = true
vim.opt.splitbelow = true
vim.opt.swapfile = false
-- TAB settings 
vim.opt.tabstop = 2 
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2 
vim.opt.expandtab = true
-- Folds
vim.opt.foldmethod='expr'
vim.opt.foldexpr='nvim_treesitter#foldexpr()' 
vim.opt.foldenable = false
-- Colours
vim.opt.termguicolors = true 
vim.cmd.colorscheme('tokyonight-night')
