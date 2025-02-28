local groups = {
  "Normal", "NormalNC", "NormalFloat", "Comment", "Constant", "Special", "Identifier",
  "Statement", "PreProc", "Type", "Underlined", "Todo", "String", "Function",
  "Conditional", "Repeat", "Operator", "Structure", "LineNr", "NonText",
  "SignColumn", "CursorLine", "CursorLineNr", "EndOfBuffer",
  "Pmenu", "PmenuSel", "PmenuSbar", "PmenuThumb", "TabLineFill",
  "StatusLine", "StatusLineNC", "TodoFgTODO"
}

for _, group in ipairs(groups) do
  vim.api.nvim_set_hl(0, group, { bg = "none" })
end

vim.cmd("colorscheme moonfly")
