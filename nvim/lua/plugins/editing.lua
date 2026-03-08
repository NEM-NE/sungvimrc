return {
  -- Surround
  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    opts = {},
  },

  -- Commentary
  {
    "tpope/vim-commentary",
    event = "VeryLazy",
  },

  -- Auto pairs
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {
      check_ts = true,
    },
  },

  -- Multiple cursors (기존 키맵 유지)
  {
    "mg979/vim-visual-multi",
    event = "VeryLazy",
    init = function()
      vim.g.VM_default_mappings = 0
      vim.g.VM_maps = {
        ["Find Under"] = "<C-n>",
        ["Find Subword Under"] = "<C-n>",
        ["Select All"] = "<A-n>",
        ["Skip Region"] = "<C-x>",
        ["Remove Region"] = "<C-p>",
      }
    end,
  },
}
