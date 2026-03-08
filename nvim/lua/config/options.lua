local opt = vim.opt

-- 인코딩
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

-- UI
opt.number = true
opt.relativenumber = false
opt.cursorline = true
opt.signcolumn = "yes"
opt.termguicolors = true
opt.showmode = false
opt.cmdheight = 1
opt.laststatus = 3

-- 검색
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- 들여쓰기
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.smartindent = true
opt.autoindent = true

-- 편집
opt.wrap = false
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.clipboard = "unnamedplus"
opt.mouse = "a"
opt.undofile = true
opt.swapfile = false
opt.backup = false

-- 분할
opt.splitbelow = true
opt.splitright = true

-- 자동완성
opt.completeopt = { "menu", "menuone", "noselect" }
opt.pumheight = 10

-- 성능
opt.updatetime = 250
opt.timeoutlen = 300

-- 숨김 문자
opt.list = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
