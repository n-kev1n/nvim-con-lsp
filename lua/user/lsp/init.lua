local status_ok, _ = pcall(require, "lspconfig")

-- Error Prevention
if not status_ok then
	return
end

-- Fidget

local status_ok1, fidget = pcall(require, "fidget")
if not status_ok1 then
	return
end

require("user.lsp.mason")
require("user.lsp.handlers").setup()
require("user.lsp.null-ls")
fidget.setup()
require("user.lsp.clang_extensions")