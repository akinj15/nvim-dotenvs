local mason_status, mason = pcall(require, "mason")
if not mason_status then
  return
end

local mason_lspconfig_status, mason_lsp = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
  return
end

mason.setup()

mason_lsp.setup({
  ensure_installed = {
    "tsserver",
    "html",
    "cssls",
    "lua_ls",
  }
})

