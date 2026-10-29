require "nvchad.options"

-- Set cursor to be unchanging color
vim.api.nvim_set_hl(0, "CursorColor", { fg = "#000000", bg = "#ffffff" })
vim.opt.guicursor = {
    "n-v-c:block-CursorColor",   -- Normal, Visual, Command-line: Block shape
    "i-ci-ve:ver25-CursorColor", -- Insert, Command-line Insert, Visual-exclusive: Vertical bar (25% width)
    "r-cr:hor20-CursorColor",    -- 20% Horizontal bar for Replace modes
    "o:hor50-CursorColor",       -- 50% Horizontal bar for Operator-pending mode
    "sm:block-CursorColor",      -- Block shape for Showmatch
}

-- vim.opt.guicursor = ""
vim.o.cursorlineopt = "both"

-- 4 SPACE TABS
vim.opt.tabstop = 4      -- Number of spaces a tab counts for
vim.opt.shiftwidth = 4   -- Size of an indent
vim.opt.softtabstop = 4  -- Number of spaces a tab counts for while performing editing operations
vim.opt.expandtab = true -- Use spaces instead of tabs

-- Prevent cursor dropping/ascending line wrap.
vim.opt.whichwrap = ""

-- Allow cursor to be placed after last char on line (aparently can cuase issues... idk)
-- vim.opt.virtualedit = "onemore"
