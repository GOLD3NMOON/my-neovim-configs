return {
  "xiyaowong/transparent.nvim",
  config = function()
    require("transparent").setup({
      groups = {
        "Normal", "NormalNC", "NormalFloat", "Comment", "Constant", "Special", "Identifier",
        "Statement", "PreProc", "Type", "Underlined", "Todo", "String", "Function",
        "Conditional", "Repeat", "Operator", "Structure", "LineNr", "NonText",
        "SignColumn", "CursorLine", "CursorLineNr", "EndOfBuffer",
        "Pmenu", "PmenuSel", "PmenuSbar", "PmenuThumb", "TabLine", "TabLineSel", "TabLineFill", "StatusLine", "StatusLineNC", "WinBar", "WinBarNC", "WinSeparator",
      },
      extra_groups = {
      },
      exclude_groups = {},
    })
  end,
}
