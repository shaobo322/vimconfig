local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local on_attach = function(client, bufnr)
    local function buf_set_keymap(...)
        vim.api.nvim_buf_set_keymap(bufnr, ...)
    end
    require('keybindings').mapLSP(buf_set_keymap)
end


local opts = {
    cmd = {'gopls'},
    capabilities = capabilities,
    settings = {
        gopls = {
            experimentalPostfixCompletions = true,
            analyses = {
                unusedparams = true,
                shadow = true,
             },
            staticcheck = true,
        },
    },
    on_attach = on_attach,
}

-- 查看目录等信息
return {
    on_setup = function(server)
        server:setup(opts)
    end,
}