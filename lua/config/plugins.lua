return {
  -- Tema gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        contrast = "hard",
      })
      vim.cmd.colorscheme("gruvbox")
    end,
  },
  
  -- Barra de estado
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({
        options = {
          theme = "gruvbox",
        },
      })
    end,
  },

-- Treesitter (syntax highlighting)
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      vim.treesitter.language.register("lua", "lua")
      require("nvim-treesitter").setup({
        ensure_installed = { "lua", "javascript", "typescript", "python", "html", "css" },
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },

  -- Árbol de archivos
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup({
        view = { width = 30 },
        filters = { dotfiles = false },
      })
    end,
  },

  -- Telescope (buscador)
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup({})
    end,
  },

  -- Git signs (indicadores visuales en el margen)
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup({
        signs = {
          add          = { text = "+" },
          change       = { text = "~" },
          delete       = { text = "-" },
          topdelete    = { text = "-" },
          changedelete = { text = "~" },
        },
      })
    end,
  },

  -- Fugitive (operaciones git completas)
  {
    "tpope/vim-fugitive",
  },
}
