-- Je dois rajouter des commentaires pour apprendre le role des commandes
-- et commencer a implementer dans mon workflow
-- Je vais en profiter pour marquer ceux que je connais avec une ligne de commentaire vide.

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Pour retourner au mode normal plus facilement parce que je ne suis pas fan du remap de thePrimeAgen
vim.keymap.set("i", "jk", "<Esc>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
--
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Built in terminal pour lancer mes applications, serveur etc...
-- Je ne sais pas encore faire fonctionner ce truc mais j'attends de developper en rust pour voir si j'ai besoin d'un  builtin terminal.
-- vim.keymap.set("<leader>t", "<Cmd>sp<CR> <Cmd>term<CR> <Cmd>resize 20N<CR> i", silent)


-- Je ne sais pas a quoi sert ce truc
-- vim.keymap.set("n", "<leader>vwm", function()
--     require("vim-with-me").StartVimWithMe() end)
-- vim.keymap.set("n", "<leader>svwm", function()
--     require("vim-with-me").StopVimWithMe()
-- end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- J'utilise cela ailleurs, du coup le suivant saute aussi
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Je n'utilise pas car lazy.nvim, mais je garde au cas ou
-- vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
-- Je ne sais pas ce que c'est
-- vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

-- J'utilise cela ailleurs pour telescope
-- vim.keymap.set("n", "<leader><leader>", function()
--     vim.cmd("so")
-- end)

-- Juste pour les prochaines lignes qui vont suivre, je vais utiliser ce fichier parce que j'en ai besoin et quelques remaps
-- J'ai trouve toutes ces configs en parcournant les dotfiles a cet endroit : https://github.com/NycRat/dotfiles
local Remap = require("gary.remap")
local nnoremap = Remap.nnoremap
local inoremap = Remap.inoremap
local vnoremap = Remap.vnoremap
local tnoremap = Remap.tnoremap

local silent = { silent = true }
-- Remap pour utiliser les commandes de run, build etc...pour les fichier en  c, cpp, rust ou go, je ferai de meme pour typescript je n'ai pas encore eu le temps
nnoremap("<leader>cb", "<Cmd>Build<CR>", silent)
nnoremap("<leader>cd", "<Cmd>DebugBuild<CR>", silent)
nnoremap("<leader>cl", "<Cmd>Run<CR>", silent)
nnoremap("<leader>cr", "<Cmd>Ha<CR>", silent)
