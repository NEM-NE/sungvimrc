return {
  "projekt0n/github-nvim-theme",
  lazy = false,
  priority = 1000,
  config = function()
    local function apply_treesitter_highlights()
      local set = vim.api.nvim_set_hl

      set(0, "@function.call", { link = "Function" })
      set(0, "@function.method", { link = "Function" })
      set(0, "@function.method.call", { link = "Function" })
      set(0, "@method", { link = "Function" })
      set(0, "@method.call", { link = "Function" })

      set(0, "@property", { link = "@variable.member" })
      set(0, "@field", { link = "@variable.member" })

      set(0, "@lsp.type.method", { link = "@function.method" })
      set(0, "@lsp.type.function", { link = "@function.call" })
      set(0, "@lsp.type.property", { link = "@property" })
    end

    vim.api.nvim_create_autocmd("ColorScheme", {
      pattern = "*",
      callback = apply_treesitter_highlights,
    })

    vim.cmd.colorscheme("github_dark_default")
    apply_treesitter_highlights()
  end,
}
