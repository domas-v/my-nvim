local lsp = require('lspconfig')
local cmp = require('cmp')
local lspkind = require('lspkind')


-- CMP setup
cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    mapping = {
        ['<C-p>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
        ['<C-n>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
        ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
        ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
        ['<C-j>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 'c' }),
        ['<C-k>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 'c' }),
        ['<C-e>'] = cmp.mapping({
            i = cmp.mapping.abort(),
            c = cmp.mapping.close(),
        }),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    },
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'buffer' },
        { name = 'vsnip' },
        { name = 'nvim_lsp_signature_help' },
        { name = 'treesitter' }
    }),
    formatting = {
        format = lspkind.cmp_format({
            with_text = true,
            menu = ({
                nvim_lsp = "[LSP]",
                buffer = "[Buffer]",
                treesitter = "[Tree]",
                luasnip = "[Luasnip]",
                nvim_lua = "[Lua]",
            })
    })
  }
})

cmp.setup.cmdline('/', {
    sources = {
    { name = 'buffer' }
    }
})
cmp.setup.cmdline(':', {
  sources = {
    { name = 'cmdline' }
  }
})


-- LSP setup
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    -- Mappings.
    local opts = { noremap=true, silent=true }

    buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    buf_set_keymap('n', '<space>da', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    buf_set_keymap('n', '<space>dv', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
    buf_set_keymap('n', '<space>dp', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
    buf_set_keymap('n', '<space>dn', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)

    require('illuminate').on_attach(client)
end

lsp.pyright.setup({
    cmd = { "/home/domas/miniconda3/bin/pyright" },
    on_attach=on_attach,
    capabilities=capabilities})
lsp.jedi_language_server.setup({
    cmd = { "/home/domas/miniconda3/bin/jedi-language-server" },
    on_attach=on_attach,
    capabilities=capabilities,
})
lsp.dockerls.setup({
    on_attach=on_attach,
    capabilities=capabilities
})
lsp.vimls.setup({
    on_attach=on_attach,
    capabilities=capabilities
})
lsp.bashls.setup({
    on_attach=on_attach,
    capabilities=capabilities})
lsp.terraformls.setup({
    on_attach=on_attach,
    capabilities=capabilities
})
lsp.rust_analyzer.setup({
    on_attach = on_attach,
    capabilities=capabilities
})
lsp.sumneko_lua.setup({
    on_attach=on_attach,
    capabilities=capabilities,
    settings = {
        Lua = {
        runtime = {
            -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
            version = 'LuaJIT',
        },
        diagnostics = {
            -- Get the language server to recognize the `vim` global
            globals = {'vim'},
        },
        workspace = {
            -- Make the server aware of Neovim runtime files
            library = vim.api.nvim_get_runtime_file("", true),
        },
        -- Do not send telemetry data containing a randomized but unique identifier
        telemetry = {
            enable = false,
        },
        },
    },
})

local null_ls = require('null-ls')
local diagnostics = null_ls.builtins.diagnostics
null_ls.setup({
    on_attach = on_attach,
    sources = {
        diagnostics.flake8,
        diagnostics.mypy.with({
            extra_args = {"--ignore-missing-imports", "--exclude=setup.py", "--exclude='test_'"
            }
        })
    },
    capabilities=capabilities
})

-- Diagnostic
vim.diagnostic.config({
    virtual_text = {
        severity = vim.diagnostic.severity.ERROR,
        source = "if_many"
    },
    float = {
        source = "if_many"
    },
    signs = true,
    underline = true,
    update_in_insert = true,
    severity_sort = true,
})

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
