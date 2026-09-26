require("nvchad.configs.lspconfig").defaults()

local servers = {
  "clangd",
  "basedpyright"
}

-- local clangd_opts = {}
-- vim.lsp.config("clangd", clangd_opts)

-- local basedpyright_opts = {}
-- vim.lsp.config("basedpyright", basedpyright_opts)


vim.lsp.enable(servers)

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(ev)
    local map = vim.keymap.set

    -- map('n', 'gd',         vim.lsp.buf.definition,     { buffer = ev.buf, desc = "Go to definition"     })  -- Default in NVChad
    -- map('n', 'gD',         vim.lsp.buf.declaration,    { buffer = ev.buf, desc = "Go to declaration"    })  -- Default in NVChad
    -- map('n', 'gi',         vim.lsp.buf.implementation, { buffer = ev.buf, desc = "Go to implementation" })
    -- map('n', 'gr',         vim.lsp.buf.references,     { buffer = ev.buf, desc = "Find references"      })
    map('n', 'K',          vim.lsp.buf.hover,          { buffer = ev.buf, desc = "Hover documentation"  })
    map('n', '<leader>rn', vim.lsp.buf.rename,         { buffer = ev.buf, desc = "Smart rename"         })
    map('n', '<leader>la', vim.lsp.buf.code_action,    { buffer = ev.buf, desc = "LSP code action"      })
    -- map('n', '[d',         vim.diagnostic.goto_prev,   { buffer = ev.buf, desc = "Previous diagnostic"  })
    -- map('n', ']d',         vim.diagnostic.goto_next,   { buffer = ev.buf, desc = "Next diagnostic" })

    -- Enable semantic tokens if supported
    -- This should probably be an OnInit autocommand
    if ev.client and ev.client.server_capabilities.semanticTokensProvider then
      vim.lsp.semantic_tokens.start(ev.buf, ev.data.client_id)
    end
  end,
})
