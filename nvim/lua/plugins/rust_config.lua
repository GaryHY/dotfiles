-- Ici on va mettre tout ma configuration pour rust, je tiens la config de : https://www.youtube.com/watch?v=gihHLsClHF0

-- TODO: Configurer le dap 

return {
    'simrat39/rust-tools.nvim',
    config = function()
        require("rust-tool").setup = {
            server = {
                capabilities = require("cmp_nvim_lsp").default_capabilities(),
                on_attach = function(_, bufnr)
                    vim.keymap.set("n", "<Leader>k", rt.hover_actions.hover_actions, { buffer = bufnr })
                    vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
                end,
            },

            tools = {
                hover_actions = {
                    auto_focus = true,
                },
            },
        }
    end,
}


