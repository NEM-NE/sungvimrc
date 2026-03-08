return {
  "dense-analysis/ale",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    vim.g.ale_linters = {
      python = { "ruff", "mypy" },
      go = { "gopls", "golangci-lint" },
      kotlin = { "ktlint" },
      lua = { "luacheck" },
    }

    vim.g.ale_fixers = {
      ["*"] = { "remove_trailing_lines", "trim_whitespace" },
      python = { "ruff", "black", "isort" },
      go = { "gofmt", "goimports" },
      kotlin = { "ktlint" },
      lua = { "stylua" },
    }

    vim.g.ale_fix_on_save = 1
    vim.g.ale_sign_error = "✘"
    vim.g.ale_sign_warning = "▲"
    vim.g.ale_echo_msg_format = "[%linter%] %s [%severity%]"

    -- Keymaps
    vim.keymap.set("n", "]d", "<cmd>ALENextWrap<cr>", { desc = "Next diagnostic" })
    vim.keymap.set("n", "[d", "<cmd>ALEPreviousWrap<cr>", { desc = "Prev diagnostic" })
    vim.keymap.set("n", "<leader>af", "<cmd>ALEFix<cr>", { desc = "ALE Fix" })
  end,
}
