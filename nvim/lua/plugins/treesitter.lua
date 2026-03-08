local langs = { "bash", "go", "json", "kotlin", "lua", "markdown", "python", "rust", "typescript", "vim", "vimdoc",
"yaml" }

return {
  "nvim-treesitter/nvim-treesitter",
  commit = "42fc28ba918343ebfd5565147a42a26580579482",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      parser_install_dir = vim.fn.stdpath("data") .. "/site",
      ensure_installed = langs,
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = {
        enable = true,
      },
    })
  end,
}
