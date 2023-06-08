local M = {}


-- C'est pas necessaire de le mettre ici surtout pour juste une fonction mais cela rend mieux en vrai
function M.current_buffer_fuzzy_find()
    require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
    })
end

return M


