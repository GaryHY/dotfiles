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

-- part from the nvchad configuration for the UI.
vim.g.base46_cache = vim.fn.stdpath('data') .. '/base46_cache/'

dofile(vim.g.base46_cache .. "defaults")

local integrations = require("nvconfig").base46.integrations

for _, name in ipairs(integrations) do
    dofile(vim.g.base46_cache .. name)
end


-- load lazy
require("lazy").setup("plugins", {
    defaults = { lazy = true },
    ui = {
        border = "rounded",
    },
    checker = { enabled = true },
    debug = false,
})
