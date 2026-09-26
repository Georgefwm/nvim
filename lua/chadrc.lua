-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "catppuccin",

	statusline = {
		enabled = true,
	},

	hl_override = {
		Comment = { italic = true },
		["@comment"] = { italic = true },

		-- Basic types, classes, and structs
		["@lsp.type.type"]        = { link = "Structure" },
		["@lsp.type.class"]       = { link = "Structure" },
		["@lsp.type.struct"]      = { link = "Structure" },
		["@lsp.type.enum"]        = { link = "Structure" },
		["@lsp.type.interface"]   = { link = "Type" },

		-- Functions and methods
		["@lsp.type.function"]    = { link = "Function" },
		["@lsp.type.method"]      = { link = "Function" },

		-- Variables, parameters, and properties
		["@lsp.type.variable"]    = { link = "@variable" },
		["@lsp.type.parameter"]   = { link = "Identifier" },
		["@lsp.type.property"]    = { link = "@property" },

		-- Namespaces and modules
		["@lsp.type.namespace"]   = { link = "Include" },

		-- Macros and prebuilts
		["@lsp.type.macro"]       = { link = "Macro" },
		["@lsp.type.builtinType"] = { link = "Type" },

		-- Specialized modifiers (e.g., read-only/constant variables)
		["@lsp.typemod.variable.readonly"] = { link = "Constant" },
		["@lsp.typemod.variable.constant"] = { link = "Constant" },
	},
}

-- M.lsp = {
	
-- }

M.nvdash = { load_on_startup = true }

return M
