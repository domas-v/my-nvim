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
        implicit_extension = nil,
        transform_implicit = false,
        transform_explicit = function(text)
            text = text:gsub(" ", "-")
            return(text)
        end
    },
    to_do = {
        symbols = {' ', '', ''},
        update_parents = true,
    },
    tables = {
        trim_whitespace = true,
        format_on_move = true,
        auto_extend_rows = false,
        auto_extend_cols = false
    },
    mappings = {
        MkdnYankAnchorLink = {'n', '<leader>my'},
        MkdnMove = {'n', '<leader>mm'},
        MkdnFoldSection = {'n', '<leader>mf'},
        MkdnUnfoldSection = {'n', '<leader>mF'},
        MkdnNextHeading = {'n', '<leader>ml'},
        MkdnPrevHeading = {'n', '<leader>mh'},
        MkdnTagSpan = {'v', '<M-CR>'},
        MkdnToggleToDo = {{'n', 'v'}, '<leader>mt'},

        -- table maps
        MkdnTableNewRowBelow = {'n', '<leader>mTr'},
        MkdnTableNewRowAbove = {'n', '<leader>mTR'},
        MkdnTableNewColAfter = {'n', '<leader>mTc'},
        MkdnTableNewColBefore = {'n', '<leader>mTC'},
    }
})
