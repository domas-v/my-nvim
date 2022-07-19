local cmd = vim.cmd

function OpenRC ()
    cmd ':tab sp'
    cmd ':e $MYVIMRC'
    cmd ':lcd %:p:h'
    print('Changed dir to ' .. vim.api.nvim_buf_get_name(0))
end

function FormatJson()
    if vim.bo.filetype == 'json' then
        cmd 'execute "%!python -m json.tool"'
    else
        print('Not json filetype')
    end
end

function Black()
    if vim.bo.filetype == "python" then
        cmd 'execute "!black % -q"'
    else
        print('Not python filetype')
    end
end
