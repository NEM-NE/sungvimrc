local map = vim.keymap.set

-- 저장
map("n", "<leader>w", "<cmd>w!<cr>", { desc = "Save" })
map("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit" })

-- 창 이동
map("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to below window" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to above window" })
map("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- 창 크기 조절
map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- 버퍼
map("n", "<leader>l", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "<leader>h", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
map("n", "<leader>bd", "<cmd>bdelete<cr><cmd>tabclose<cr>gT", { desc = "Delete buffer" })
map("n", "<leader>ba", "<cmd>bufdo bd<cr>", { desc = "Delete all buffers" })

-- 탭
map("n", "<leader>tn", "<cmd>tabnew<cr>", { desc = "New tab" })
map("n", "<leader>to", "<cmd>tabonly<cr>", { desc = "Close other tabs" })
map("n", "<leader>tc", "<cmd>tabclose<cr>", { desc = "Close tab" })
map("n", "<leader>tm", ":tabmove", { desc = "Move tab" })
map("n", "<leader>t<leader>", "<cmd>tabnext<cr>", { desc = "Next tab" })

-- 검색 하이라이트 제거
map("n", "<leader><cr>", "<cmd>nohlsearch<cr>", { desc = "Clear search highlight" })
map("n", "<leader><space>", "<cmd>nohlsearch<cr>", { desc = "Clear search highlight" })

-- cd to current file directory
map("n", "<leader>cd", "<cmd>cd %:p:h<cr><cmd>pwd<cr>", { desc = "CD to file dir" })

-- 스펠체크
map("n", "<leader>ss", "<cmd>setlocal spell!<cr>", { desc = "Toggle spell" })
map("n", "<leader>sn", "]s", { desc = "Next spell error" })
map("n", "<leader>sp", "[s", { desc = "Prev spell error" })
map("n", "<leader>sa", "zg", { desc = "Add to dictionary" })
map("n", "<leader>s?", "z=", { desc = "Spell suggestions" })

-- paste 모드
map("n", "<leader>pp", "<cmd>setlocal paste!<cr>", { desc = "Toggle paste mode" })

-- quickfix
map("n", "<leader>cc", "<cmd>botright copen<cr>", { desc = "Open quickfix" })
map("n", "<leader>n", "<cmd>cnext<cr>", { desc = "Next quickfix" })
map("n", "<leader>p", "<cmd>cprevious<cr>", { desc = "Prev quickfix" })

-- Visual 모드에서 들여쓰기 후 선택 유지
map("v", "<", "<gv", { desc = "Indent left" })
map("v", ">", ">gv", { desc = "Indent right" })

-- 선택 영역 이동
map("v", "J", ":m '>+1<cr>gv=gv", { desc = "Move selection down" })
map("v", "K", ":m '<-2<cr>gv=gv", { desc = "Move selection up" })

-- 터미널 모드
map("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- 빈 줄 추가
map("n", "<leader>o", "o<Esc>", { desc = "Add line below" })
map("n", "<leader>O", "O<Esc>", { desc = "Add line above" })
