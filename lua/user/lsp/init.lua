local status_ok, _ = pcall(require, "lspconfig")

-- Error Prevention
if not status_ok then
  return
end

require "user.lsp.mason"
require("user.lsp.handlers").setup()
require "user.lsp.null-ls"
require("user.lsp.saga")