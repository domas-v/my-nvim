require('mkdnflow').setup({
    perspective = {
        priority = 'root',
        fallback = 'first',
        root_tell = 'index.md',
        nvim_wd_heel = true
    },
    links = {
        style = 'markdown',
        conceal = false,
        implicit_extension = nil,
        transform_implicit = false,
        transform_explicit = function(text)
            -- text = text:gsub(" ", " ")
            return(text)
        end
    },
    to_do = {
        symbols = {' ', '', ''},
        update_parents = true,
        not_started = ' ',
        in_progress = '',
        complete = ''
    },
    mappings = {
        MkdnTagSpan = {'v', '<M-CR>'},
        MkdnYankAnchorLink = {'n', '<leader>ml'},
        MkdnYankFileAnchorLink = {'n', '<leader>mL'},
        MkdnToggleToDo = {{'n', 'v'}, '<leader>mt'},
        MkdnUpdateNumbering = {'n', '<leader>mn'},
        MkdnTableNewRowBelow = {'n', '<leader>mr'},
        MkdnTableNewRowAbove = {'n', '<leader>mR'},
        MkdnTableNewColAfter = {'n', '<leader>mc'},
        MkdnTableNewColBefore = {'n', '<leader>mC'},
        MkdnFoldSection = {'n', '<leader>mf'},
        MkdnUnfoldSection = {'n', '<leader>mF'}
    }
})
