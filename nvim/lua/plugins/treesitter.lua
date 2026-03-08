local langs = { "bash", "go", "json", "kotlin", "lua", "markdown", "python", "rust", "typescript", "vim", "vimdoc",
"yaml" }

return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSInstall " .. table.concat(langs, " "),
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    -- 누락된 파서 비동기 자동 설치
    local installed = require("nvim-treesitter.config").get_installed()
    local missing = vim.tbl_filter(function(lang)
      return not vim.list_contains(installed, lang)
    end, langs)
    if #missing > 0 then
      require("nvim-treesitter.install").install(missing)
    end

    -- filetype별 treesitter 하이라이팅 활성화
    vim.api.nvim_create_autocmd("FileType", {
      callback = function(ev)
        pcall(vim.treesitter.start, ev.buf)
      end,
    })
  end,
}
