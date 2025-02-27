require("config")
require("lazy").setup({{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}})

vim.opt.number = true
vim.opt.relativenumber = true
-- vim.opt.autoindent = true
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"
-- vim.diagnostic.config({
  -- virtual_text = true,
  -- signs = true,
  -- underline = true,
-- })
vim.opt.foldmethod = "manual"
vim.opt.smartindent = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.colorcolumn = "80"
vim.opt.scrolloff = 8

vim.api.nvim_create_augroup('remember_folds', { clear = true })

vim.api.nvim_create_autocmd('BufWinLeave', {
    group = 'remember_folds',
    pattern = '*',
    callback = function()
        if vim.fn.expand('%') ~= '' and vim.bo.filetype ~= 'netrw' then
            vim.cmd('mkview')
        end
    end
})

vim.api.nvim_create_autocmd('BufWinEnter', {
    group = 'remember_folds',
    pattern = '*',
    callback = function()
        if vim.fn.expand('%') ~= '' and vim.bo.filetype ~= 'netrw' then
            vim.cmd('silent! loadview')
        end
    end
})

