-- lua/plugins/vimtex.lua

-- Set the PDF viewer (change 'mupdf' to your preferred viewer)
vim.g.vimtex_view_method = "mupdf"

-- Define a custom viewer command with a refresh option
vim.g.vimtex_view_general_viewer = "mupdf"
vim.g.vimtex_view_general_options = "--reload"

-- Enable quickfix mode (1 for enabled, 0 for disabled)
vim.g.vimtex_quickfix_mode = 1

-- Disable mappings provided by vimtex
vim.g.vimtex_mappings_enabled = 0

-- Disable auto-indentation
vim.g.vimtex_indent_enabled = 0

-- Enable syntax highlighting
vim.g.vimtex_syntax_enabled = 1

-- Ignore certain log messages to suppress errors
vim.g.vimtex_log_ignore = {
  "Underfull",
  "Overfull",
  "specifier changed to",
  "Token not allowed in a PDF string",
}

vim.g["vimtex_context_pdf_viewer"] = "mupdf"

-- Additional compiler options (customize as needed)
vim.g.vimtex_compiler_pdflatex = {
  options = {
    "--shell-escape",
    "--interaction=nonstopmode",
    "--synctex=1",
    "-file-line-error",
  },
  callback = function()
    vim.fn["vimtex#compiler#pdflatex"]({ "-file-line-error", "-interaction=nonstopmode", "-synctex=1", "-quiet" })
  end,
}
-- Ignore overfull hbox messages in the log
vim.g.vimtex_log_ignore = {
  "Underfull",
  "Overfull",
  "specifier changed to",
  "Token not allowed in a PDF string",
  "Overfull \\hbox",
}
-- Return a table with the configurations (important!)
return {}
