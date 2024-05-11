
vim.opt.number = true
vim.opt.hlsearch = true 
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.wrap = true
vim.opt.splitbelow = true
-- TAB settings 
vim.opt.tabstop = 2 
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2 
vim.opt.expandtab = true
-- Keymaps 
vim.keymap.set('', '<C-n>', '<cmd>Neotree toggle<cr>')
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')
vim.keymap.set('n', '<C-t>', '<cmd>ToggleTerm<cr>')
-- Open term in insert
vim.api.nvim_create_autocmd({ "TermOpen", "BufEnter" }, {
    pattern = { "*" },
    callback = function()
        if vim.opt.buftype:get() == "terminal" then
            vim.cmd(":startinsert")
        end
    end
})
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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
--   {'preservevim/nerdtree'},
  {'nvim-treesitter/nvim-treesitter'},
  {'folke/tokyonight.nvim'},
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
  },
  {'akinsho/toggleterm.nvim', version = "*", config = true},

})

require('lualine').setup()

vim.opt.termguicolors = true 
vim.cmd.colorscheme('tokyonight-night')

require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
