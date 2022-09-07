local on_attach = function(client, bufnr)
    local function buf_set_keymap(...)
        vim.api.nvim_buf_set_keymap(bufnr, ...)
    end
    require('keybindings').mapLSP(buf_set_keymap)
end


local opts = {
    cmd = { "pyright-langserver", "--stdio" },
    settings = {
		python = {
		    analysis = {
		    	autoSearchPaths = true,
		    	diagnosticMode = "workspace",
		    	useLibraryCodeForTypes = true
		    }
		}
    },
    single_file_support = true,
    filetypes = { "python" },
    on_attach = on_attach,
}

-- 查看目录等信息
return {
    on_setup = function(server)
        server:setup(opts)
    end,
}


