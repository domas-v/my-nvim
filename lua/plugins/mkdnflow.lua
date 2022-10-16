require('mkdnflow').setup({
    perspective = {
        priority = 'root',
        fallback = 'first',
        root_tell = 'Inbox.md',
        nvim_wd_heel = true
    },
    links = {
        style = 'markdown',
        conceal = false,
        implicit_extension = ".md",
        transform_implicit = false,
        transform_explicit = function(text)
            text = text:gsub(" ", "-")
            return(text)
        end
    },
    to_do = {
        symbols = {' ', 'X'},
        update_parents = true,
    },
    tables = {
        trim_whitespace = true,
        format_on_move = true,
        auto_extend_rows = false,
        auto_extend_cols = false
    },
    mappings = {
        MkdnYankAnchorLink = {'n', '<leader>ny'},
        MkdnMove = {'n', '<leader>nm'},
        MkdnFoldSection = {'n', '<leader>nf'},
        MkdnUnfoldSection = {'n', '<leader>nF'},
        MkdnNextHeading = {'n', '<leader>nl'},
        MkdnPrevHeading = {'n', '<leader>nh'},
        MkdnTagSpan = {'v', '<M-CR>'},
        MkdnToggleToDo = {{'n', 'v'}, '<leader>nt'},

        -- table maps
        MkdnTableNewRowBelow = {'n', '<leader>nTr'},
        MkdnTableNewRowAbove = {'n', '<leader>nTR'},
        MkdnTableNewColAfter = {'n', '<leader>nTc'},
        MkdnTableNewColBefore = {'n', '<leader>nTC'},
    }
})
