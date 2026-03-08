-- Leader 키 (lazy 로드 전에 설정 필수)
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- lazy.nvim 부트스트랩
require("config.lazy")

-- 기본 설정
require("config.options")
require("config.keymaps")
require("config.autocmds")
