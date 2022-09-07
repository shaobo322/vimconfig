local status, null_ls = pcall(require, "null-ls")
if not status then
  vim.notify("没有找到 null-ls")
  return
end

local formatting = null_ls.builtins.formatting

null_ls.setup({
  debug = false,
  sources = {
    --  brew install shfmt
    formatting.shfmt,
    -- Lua
    formatting.stylua,
    -- lua
    formatting.rustfmt,
    -- golang
    formatting.gofmt
  },
  -- 保存自动格式化
  on_attach = function(client)
    -- if vim.lsp.protocol.document_formatting then
    -- if client.resolved_capabilities.document_formatting then
      vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
    -- end
  end,
})