-- Je vais utiliser cette configuration pour C, C++ et rust bien qu'elle soit initialement prevu pour c++ et rust
local M = {}

function M.setup()
    local dap = require "dap"
    dap.configurations.cpp = {
        {
            name = "Launch file",
            type = "codelldb",
            request = "launch",
            program = function()
                -- Dans le cas ou je travaille sur un fichier cargo
                return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
            end,
            cwd = '${workspaceFolder}',
            stopOnEntry = false,
        },
    }

    -- Je fais un specifique rust parce que je veux changer le path to executable
    dap.configurations.rust = {
        {
            name = "Launch file",
            type = "codelldb",
            request = "launch",
            -- On tente comme cela
            -- program = vim.fn.getcwd() .. 'target/debug' .. '${file}'
            cwd = '${workspaceFolder}',
            program = function()
                -- return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/target/debug/', 'file')
                -- Une autre facon de faire, l'idee c'est que je vais surement sur de gros projets donc il y aura du cargo
                -- On va essayer de rajouter des conditions pour pouvoir gerer si ce n'est un projet cargo
                return vim.fn.input('Path to executable:',
                    vim.fn.getcwd() .. '/target/debug/' .. vim.fn.fnamemodify(vim.fn.getcwd(), ':t'))
            end,
            stopOnEntry = false,
        },
    }
    dap.adapters.codelldb = {
        type = 'server',
        port = "${port}",
        executable = {
            -- CHANGE THIS to your path! Je garde au cas ou la forme preconise pour la commande
            -- command = '/absolute/path/to/codelldb/extension/adapter/codelldb',
            command = '/home/gary/.local/share/nvim/mason/packages/codelldb/extension/adapter/codelldb',
            args = { "--port", "${port}" },
        }
    }

    -- On utilise cette config pour C.
    dap.configurations.c = dap.configurations.cpp
end

return M
