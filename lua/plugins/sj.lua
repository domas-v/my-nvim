local colors = {
    black = "#000000",
    light_gray = "#DDDDDD",
    white = "#FFFFFF",

    blue = "#5AA5DE",
    dark_blue = "#345576",
    darker_blue = "#005080",

    green = "#40BC60",
    magenta = "#C000C0",
    orange = "#DE945A",
}

local sj = require("sj")

sj.setup({
    pattern_type = "vim_very_magic",
    prompt_prefix = "jump: ",
    search_scope = "visible_lines",
    relative_labels = true,
    update_search_register = true,

    highlights = {
        SjFocusedLabel = { fg = colors.white, bg = colors.magenta, bold = false, italic = false },
        SjLabel = { fg = colors.black, bg = colors.blue, bold = true, italic = false },
        SjLimitReached = { fg = colors.black, bg = colors.orange, bold = true, italic = false },
        SjMatches = { fg = colors.light_gray, bg = colors.darker_blue, bold = false, italic = false },
        SjNoMatches = { fg = colors.orange, bold = false, italic = false },
        SjOverlay = { fg = colors.dark_blue, bold = false, italic = false },
    },

    keymaps = {
        prev_match = "<C-j>", -- focus the previous label and match
        next_match = "<C-k>", -- focus the next label and match
        delete_prev_word = "<C-w>", -- delete previous word
		delete_pattern = "<C-u>", -- delete the whole pattern
		restore_pattern = "<C-BS>", -- restore the pattern to the last matching version

        send_to_qflist = "<C-q>", --- send search result to the quickfix list
    },
})

vim.keymap.set("n", "s", function()
    sj.run({ wrap_jumps = true })
end)


vim.keymap.set("v", "s", function()
    sj.run({ wrap_jumps = true })
end)

vim.keymap.set("n", "<C-,>", sj.prev_match)
vim.keymap.set("n", "<C-.>", sj.next_match)
