local cmd = vim.cmd

vim.api.nvim_create_user_command(
    'OpenConfig',
    function()
        cmd ':tab sp'
        cmd ':e $MYVIMRC'
        cmd ':lcd %:p:h'
        print('Changed dir to ' .. vim.api.nvim_buf_get_name(0))
    end,
    { bang = true, desc = 'Open config' }
)

vim.api.nvim_create_user_command(
    'FormatJson',
    function()
        if vim.bo.filetype == 'json' then
            cmd 'execute "%!python -m json.tool"'
        else
            print('Not json filetype')
        end
    end,
    { bang = true, desc = 'Format json' }
)

vim.api.nvim_create_user_command(
    'Black',
    function()
        if vim.bo.filetype == "python" then
            cmd 'execute "!black % -q"'
        else
            print('Not Python filetype')
        end
    end,
    { bang = true, desc = 'Format with black' }
)

vim.api.nvim_create_user_command(
    'GoFmt',
    function()
        if vim.bo.filetype == "go" then
            cmd 'execute "!go fmt %"'
        else
            print('Not Go filetype')
        end
    end,
    { bang = true, desc = 'Format with gofmt ' }
)
